<?php
namespace App\Http\Controllers;
set_time_limit(500);
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
use App\Models\Book_cate;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Goutte;

class IndexController extends Controller
{
    public function Home(){
        //khai báo danh mục
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        // khai báo truyện nhiều views
        $bk = Truyen::orderBy('views','DESC')->where('bk_at',0)->take(12)->get();
        // khai báo truyện nhiều like
        $bk1 = Truyen::orderBy('like','DESC')->where('bk_at',0)->take(12)->get();
        // khai báo truyện mới cập nhật
        $bk_up = Truyen::orderBy('updated_at','DESC')->where('bk_at',0)->take(10)->get();
        // khai báo truyện đề cử
        $bk_vip = Truyen::orderBy('views','DESC')->where('vip',1)->where('bk_at',0)->take(12)->get();
        // khai báo truyện có nhiều view nhất
        $max_views = Truyen::orderBy('views','DESC')->first();
        // xác nhận xem có thành phần nào null ko
        if($cate != null && $bk != null && $bk1 != null && $bk_up !=null && $bk_vip !=null){            
            return view('pages.home')->with(compact('cate','bk','bk_up','bk_vip','bk1','max_views'));
        }else{
            return redirect('/');
        } 
        
    }

    public function danhmuc($cate_slug){
        // khai báo danh mục
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        // lấy danh mục theo danh mục slug
        $cate_id = DanhmucTruyen::where('cate_slug',$cate_slug)->first();
        if($cate_id != null){
            $cate_bk = DanhmucTruyen::find($cate_id->id);
            // khai báo list danh mục id
            $nhiutruyen = [];
            foreach($cate_bk->nhieutruyen as $danh){
                $nhiutruyen[] = $danh->id;
            }
            // lấy truyện theo danh mục id
            $bk = Truyen::with('thuocnhieudanhmuctruyen')->where('bk_at',0)->whereIn('id',$nhiutruyen)->paginate(48);
    
            return view('pages.danhmuc')->with(compact('cate','bk','cate_id'));
        }else{
            return redirect('/');
        }
    }
    
    public function xemtruyen($id){

        $cate = DanhmucTruyen::orderBy('id','ASC')->get();

        $bk = Truyen::with('thuocnhieudanhmuctruyen','userW')->where('id',$id)->where('bk_at',0)->first();
        if($bk != null){
            $nhiutruyen = [];
            foreach($bk->thuocnhieudanhmuctruyen as $danh){
                $nhiutruyen[] = $danh->id;
            }
            
            $ch_fr = Chapter::with('truyenC')->orderBy('position','ASC')->where('truyen_id',$bk->id)->first();            
            $ch = Chapter::with('truyenC')->orderBy('position','ASC')->where('truyen_id',$bk->id)->paginate(50);

            $g_view = Chapter::with('truyenC')->orderBy('views','DESC')->where('truyen_id',$bk->id)->first();
    
            $danhmuc = DanhmucTruyen::orderBy('id','DESC')->get();
    
            
            $bycate = DanhmucTruyen::with('nhieutruyen')->whereIn('id',$nhiutruyen)->take(3)->get();
    
            $cmt = Comment::orderBy('create_at','DESC')->where('bk_id',$bk->id)->get();
    
            
            $max_views = Chapter::with('truyenC')->orderBy('views','DESC')->where('truyen_id',$bk->id)->first();
            if($max_views != null){
                $bk->views = $max_views->views;
            }else{
                $bk->views = 0;
            }
            $ch5 = Chapter::with('truyenC')->orderBy('position','ASC')->where('truyen_id',$bk->id)->get();
            $bk->c_chap = count($ch5);
            $bk->save();
            
    
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

        if($ch->base_url != null){
            if($ch->content == null){                
                $crawler = Goutte::request('GET', $ch->base_url);
                $content = $crawler->filter('div#contentbox')->each(function ($node) {  
                    return $node->html();       
                })[0];
                $dir = 'public/upload/truyen/'.$ch->truyen_id;
                if( is_dir($dir) === false )
                {
                    mkdir($dir);
                }
                $name = $ch->position.'.txt';
                $file = fopen($dir . '/' . $name,'w');
                fwrite($file, $content);
                fclose($file);
                $ch->content = $dir.'/'.$name;
                $ch->header = $crawler->filter('#timu')->each(function ($node) {  
                    return $node->text();       
                })[0];
                $ch->upd_at = Carbon::now();
                $ch->save();
            }
        }           
        $max_id = Chapter::where('truyen_id',$truyen_id)->orderBy('position','DESC')->first();
        $min_id = Chapter::where('truyen_id',$truyen_id)->orderBy('position','ASC')->first();
        
        $next_ch = Chapter::where('truyen_id',$truyen_id)->where('position','>',$ch->position)->min('position');
        $pre_ch = Chapter::where('truyen_id',$truyen_id)->where('position','<',$ch->position)->max('position');
        
        $all_ch = Chapter::with('truyenC')->orderBy('position','ASC')->where('truyen_id',$truyen_id)->get();

        $ch->views = $ch->views + 1;
        $ch->save();

        $max_views = Chapter::with('truyenC')->orderBy('views','DESC')->where('truyen_id',$ch->truyen_id)->first();
        $bk = Truyen::with('chapter')->where('id',$ch->truyen_id)->first();
        $bk->views = $max_views->views;
        $bk->save();

        $myfile = fopen($ch->content, "r") or die("Unable to open file!");   
        $content = fread($myfile,filesize($ch->content));
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
    public function change_name(Request $request){
        $data = $request->validate(
            [
                'name' => 'required|unique:users|max:25',
            ],
            [
                'name.required' => 'Chưa nhập tên',
                'name.unipue' => 'Đã có người sử dụng tên này này'
            ]
        );
        $user = User::find(Auth::user()->id);
        $user->name = $data['name'];
        $user->save();
        return redirect()->back()->with('status','Thành công');
    }
    public function change_img(Request $request){
        $data = $request->validate(
            [
                'u_img' => 'required:max:2048',
            ],
            [
                'u_img.required' => 'Chưa chọn ảnh',
            ]
        );
        $get_image = $request->file('u_img');
        $user = User::find(Auth::user()->id);

        if($get_image != null){
            $path = 'public/upload/user/';    
            // cắt đường dẫn ảnh
            $cut = preg_split ("/\//", $user->u_img);
            // xác nhận có ảnh trong thư mục không
            if(file_exists($path.$cut[7])){
                // xoá ảnh cũ
                unlink($path.$cut[7]);
            }    
            // cắt tên email
            $cut1 = preg_split ("/\@/", $user->email);
            // lấy tên ảnh gốc
            $get_name_image = $get_image->getClientOriginalName();
            // cắt tên ảnh gốc
            $cutname = preg_split ("/\./", $get_name_image);
            // ghép tên ảnh
            $name_image = $cut1[0].'.'.$cutname[1];
            // lưu ảnh
            $get_image->move($path,$name_image);   
            // đường dẫn ảnh     
            $img = url($path.$name_image);
            // database bảng user
            $user->u_img = $img;
        }else{
            $user->u_img = $user->u_img;
        }
        $user->save();
        return redirect()->back()->with('status','Thành công');
    }
}

