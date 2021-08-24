<?php

namespace App\Http\Controllers;

use App\Models\Chapter;
use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use App\Models\Truyen;
use App\Models\Tutruyen;
use App\Models\User;
use App\Models\Comment;
use App\Models\Like;
use Carbon\Carbon;
use App\Models\Reply;
use App\Models\Profile;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class IndexController extends Controller
{
    public function Home(){

        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        $bk = Truyen::orderBy('views','DESC')->where('bk_at',0)->take(12)->get();
        $bk1 = Truyen::orderBy('like','DESC')->where('bk_at',0)->take(12)->get();
        $bk_up = Truyen::orderBy('updated_at','DESC')->where('bk_at',0)->take(10)->get();
        $bk_vip = Truyen::orderBy('views','DESC')->where('vip',1)->where('bk_at',0)->take(6)->get();
        if($cate != null && $bk != null && $bk1 != null && $bk_up !=null && $bk_vip !=null){            
            return view('pages.home')->with(compact('cate','bk','bk_up','bk_vip','bk1'));
        }else{
            return redirect('/');
        } 
        
    }

    public function danhmuc($cate_slug){

        $cate = DanhmucTruyen::orderBy('id','ASC')->get();

        $cate_id = DanhmucTruyen::where('cate_slug',$cate_slug)->first();
        if($cate_id != null){
            $cate_bk = DanhmucTruyen::find($cate_id->id);
    
            $nhiutruyen = [];
            foreach($cate_bk->nhieutruyen as $danh){
                $nhiutruyen[] = $danh->id;
            }
    
            $bk = Truyen::with('thuocnhieudanhmuctruyen')->where('bk_at',0)->whereIn('id',$nhiutruyen)->paginate(48);
    
            return view('pages.danhmuc')->with(compact('cate','bk','cate_id'));
        }else{
            return redirect('/');
        }
    }
    
    public function xemtruyen($bk_slug , Request $request){

        $cate = DanhmucTruyen::orderBy('id','ASC')->get();

        $bk = Truyen::with('thuocnhieudanhmuctruyen','userW')->where('bk_slug',$bk_slug)->where('bk_at',0)->first();
        if($bk != null){
            $nhiutruyen = '';
            foreach($bk->thuocnhieudanhmuctruyen as $danh){
                $nhiutruyen = $danh->id;
            }
    
            $ch = Chapter::with('truyenC')->orderBy('position','ASC')->where('truyen_id',$bk->id)->get();
    
            $g_view = Chapter::with('truyenC')->orderBy('views','DESC')->where('truyen_id',$bk->id)->first();
    
            $danhmuc = DanhmucTruyen::orderBy('id','DESC')->get();
    
            $ch_fr = Chapter::with('truyenC')->orderBy('id','ASC')->where('truyen_id',$bk->id)->first();
    
            $bycate = DanhmucTruyen::with('nhieutruyen')->where('id',$nhiutruyen)->take(3)->get();
    
            $cmt = Comment::orderBy('create_at','DESC')->where('bk_id',$bk->id)->paginate(3);
            if($request->ajax()){
                $cmt = Comment::orderBy('create_at','DESC')->where('bk_id',$bk->id)->paginate(3);
                return view('pages.data.cmt')->with(compact('cmt'));
            }
    
            if(count($ch)!=0){
                $max_views = Chapter::with('truyenC')->orderBy('views','DESC')->where('truyen_id',$bk->id)->first();
                $bk->views = $max_views->views;
                $bk->c_chap = count($ch);
                $bk->save();
            }
    
            $c_like = count(Like::where('bk_id',$bk->id)->get());
            if($c_like !=0){            
                $bk->like = $c_like;
                $bk->save();
            }
            $bkmk = count(Tutruyen::where('bk_id',$bk->id)->get());
    
            if(Auth::user()){            
    
                $bmk = Tutruyen::where('bk_id',$bk->id)->where('user_id',Auth::user()->id)->first(); 
    
                $like = Like::where('bk_id',$bk->id)->where('uid',Auth::user()->id)->first();
    
                return view('pages.truyen')->with(compact('cate','bk','ch','bycate','ch_fr','danhmuc','g_view','cmt','bkmk','bmk','like'));
    
            }else{            
                return view('pages.truyen')->with(compact('cate','bk','ch','bycate','ch_fr','danhmuc','g_view','cmt','bkmk'));
            }
        }else{
            return redirect('/');
        }
    }  
      
    public function doctruyen($truyen_id , $position){
        
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();

        $ch = Chapter::with('truyenC')->where('position',$position)->where('truyen_id',$truyen_id)->first();

        $all_ch = Chapter::with('truyenC')->orderBy('position','ASC')->where('truyen_id',$truyen_id)->get();

        $next_ch = Chapter::where('truyen_id',$truyen_id)->where('position','>',$ch->position)->min('position');
        $pre_ch = Chapter::where('truyen_id',$truyen_id)->where('position','<',$ch->position)->max('position');

        $max_id = Chapter::where('truyen_id',$truyen_id)->orderBy('position','DESC')->first();
        $min_id = Chapter::where('truyen_id',$truyen_id)->orderBy('position','ASC')->first();

        $ch->views = $ch->views + 1;
        $ch->save();

        $max_views = Chapter::with('truyenC')->orderBy('views','DESC')->where('truyen_id',$ch->truyen_id)->first();
        $bk = Truyen::with('chapter')->where('id',$ch->truyen_id)->first();
        $bk->views = $max_views->views;
        $bk->save();

        $dir = $ch->content;
        $myfile = fopen($dir, "r") or die("Unable to open file!");   
        $content = fread($myfile,filesize($dir));
        fclose($myfile); 

        return view('pages.chapter')->with(compact('cate','ch','all_ch','next_ch','pre_ch','max_id','min_id','content'));
    }

    public function timkiem_ajax(Request $request){
        $data = $request->all();

        if($data['query']){

            $truyen = Truyen::where('bk_at',0)->where('bk_name','LIKE','%'.$data['query'].'%')->take(6)->get();

            $output = '
            <ul class="dropdown-menu" style="display:block;">'
            ;
            foreach($truyen as $key => $tr){
                $output .= '
                <li class="li_search_ajax"><a class="nav-link" style="border: 1px;width:300px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">'.$tr->bk_name.'</a></li>
                ';
            }

        $output .= '</ul>';
        
        echo $output;
        }
    }
    public function timkiem(){
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        $tukhoa = $_GET['tukhoa'];
        $bk = Truyen::with('thuocnhieudanhmuctruyen')->where('bk_name','LIKE','%'.$tukhoa.'%')->orWhere('bk_des','LIKE','%'.$tukhoa.'%')->orWhere('author','LIKE','%'.$tukhoa.'%')->paginate(48);
        
        return view('pages.timkiem')->with(compact('cate','bk','tukhoa'));
    }
    public function themtutruyen($bid){        
        $tt = new Tutruyen(); 
        $tt->bk_id = $bid;
        $tt->user_id = Auth::user()->id;       
        $tt->save();
        return redirect()->back()->with('status','Thêm vào tủ thành công');
    }
    public function tutruyen(){
        if(Auth::user()){
            $t = Tutruyen::where('user_id',Auth::user()->id)->get();
            $cate = DanhmucTruyen::orderBy('id','ASC')->get();  
            $uid = Auth::user()->id;          
            $us = User::with('nhieutruyen')->where('id',$uid)->get();
            return view('pages.tutruyen')->with(compact('cate','us','t'));
        }else{
            return redirect('/register');
        }        
    }
    public function xoatu($bid){
        Tutruyen::where('bk_id',$bid)->where('user_id',Auth::user()->id)->delete();
        return redirect()->back()->with('status','Đã xoá truyện ra khỏi tủ thành công');
    }
    public function cmt($bid, Request $request){
        if(Auth::user()){
            $data = $request->all();
            if($data['cmt']!=null){                
                $cmt = new Comment();
                $cmt->cmt = $data['cmt'];
                $cmt->name = Auth::user()->name;
                $cmt->user_id = Auth::user()->id;
                $cmt->bk_id = $bid;
                $cmt->create_at = Carbon::now('Asia/Ho_Chi_Minh');
                $cmt->save();        
                return redirect()->back()->with('status','Thành công');
            }else{
                return redirect()->back()->with('error','Vui lòng nhập bình luận');
            }
        }else{
            return redirect('/register');
        }
    }
    public function rep($cmid, Request $request){
        if(Auth::user()){
            $data = $request->all();
            if($data['rep']!=null){                
                $cmt = new Reply();
                $cmt->rep = $data['rep'];
                $cmt->name = Auth::user()->name;
                $cmt->user_id = Auth::user()->id;
                $cmt->cmt_id = $cmid;
                $cmt->create_at = Carbon::now('Asia/Ho_Chi_Minh');
                $cmt->save();        
                return redirect()->back()->with('status1','Thành công');
            }else{
                return redirect()->back()->with('err','Vui lòng nhập bình luận');
            }
        }else{
            return redirect('/register');
        }
    }
    public function like($bid,Request $request){        
        $lke = new Like();
        $lke->bk_id = $bid;
        $lke->uid = Auth::user()->id;
        $lke->save();
        return redirect()->back()->with('status','Đã thích truyện này');
    }
    public function user($uid, Request $request){ 
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        $cmt = Comment::orderBy('create_at','DESC')->where('user_id',$uid)->where('bk_id',null)->paginate(3);        
        $tr = Truyen::where('user_id',$uid)->get();
        if($request->ajax()){
            $cmt = Comment::orderBy('create_at','DESC')->where('user_id',$uid)->where('bk_id',null)->paginate(3);
            return view('pages.data.cmt')->with(compact('cmt'));
        }
        $u_pf = User::where('id',$uid)->first();
        $c_like = count(Like::where('uid',$uid)->get());
        //Số lần bình luận truyện
        $cm = Comment::where('user_id',$uid)->where('bk_id','<>',null)->get();
        $crep = 0;
        foreach($cm as $key => $value){
            $crep += count(Reply::where('cmt_id',$value->id)->get());
        }
        $c_cmt = count($cm) + $crep;
        //Tổng số bình luận truyện
        $c_tr = [];
        foreach($tr as $key => $val){            
            $c_tr[] = $val->id;
        }
        $cmm = Comment::whereIn('bk_id',$c_tr)->get();
        $crep = [];
        foreach($cmm as $key => $value){
            $crep[] = $value->id;
        }
        $c_rep = Reply::whereIn('cmt_id',$crep)->get();
        $c_cmm = count($cmm) + count($c_rep);
        //Tồng truyện trong tủ
        $c_list = count(Tutruyen::where('user_id',$uid)->get());
        //Tổng truyện, chương truyện, like truyện
        $c_tr = count($tr);
        $ctr_like = 0;
        $ctr_chap = 0;
        foreach($tr as $key => $val){
            $ctr_like += $val->like;
            $ctr_chap += $val->c_chap;
        }
        $profil = Profile::where('uid',$uid)->first();
        if($profil == null){
            $profil = new Profile();
            $profil->uid = $uid;
            $profil->save();
            $profile = $profil;
        }else{
            $profile = $profil;
        }
        if($u_pf != null){            
            return view('pages.user')->with(compact('cate','u_pf','cmt','c_like','c_cmt','c_list','c_tr','ctr_like','ctr_chap','profile','c_cmm'));
        }else{
            abort(404);
        }
    }
    public function ucmt(Request $request){
        if(Auth::user()){
            $data = $request->all();
            if($data['cmt']!=null){                
                $cmt = new Comment();
                $cmt->cmt = $data['cmt'];
                $cmt->name = Auth::user()->name;
                $cmt->user_id = Auth::user()->id;
                $cmt->create_at = Carbon::now('Asia/Ho_Chi_Minh');
                $cmt->save();        
                return redirect()->back()->with('status','Thành công');
            }else{
                return redirect()->back()->with('error','Vui lòng nhập bình luận');
            }
        }else{
            return redirect('/register');
        }
    }
    public function change_pwd(Request $request){
        $data = $request->all();
        if($data['old_pwd'] != null && $data['new_pwd'] != null){                
            $user = User::find(Auth::user()->id);
            $old_pwd = Hash::make($data['old_pwd']);
            $new_pwd = Hash::make($data['new_pwd']);
            if($user->password = $old_pwd){
                $user->password = $new_pwd;
                $user->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
                $user->save();
                return redirect()->back()->with('status','Thành công');
            }else{
                return redirect()->back()->with('err','Mật khẩu cũ không chính xác');
            }     
        }else{
            return redirect()->back()->with('err','Vui lòng nhập đầy đủ');
        }
    }
    public function profile(Request $request){
        $data = $request->all();
        $pro1 = Profile::where('uid',Auth::user()->id)->first();
            $profile = Profile::find($pro1->id);
            $profile->sex = $data['sex'];
            $profile->bio = $data['bio'];
            $profile->des = $data['des'];
            $profile->web = $data['web'];
            $profile->git = $data['git'];
            $profile->twi = $data['twi'];
            $profile->ins = $data['ins'];
            $profile->fb = $data['fb'];
            $profile->save();
        return redirect()->back()->with('status','Thành công');
    }
    public function post(){
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();

        return view('pages.post')->with(compact('cate'));
    }
}

