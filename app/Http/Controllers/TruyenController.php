<?php

namespace App\Http\Controllers;

use App\Models\Chapter;
use Illuminate\Http\Request;
use App\Models\Truyen;
use App\Models\DanhmucTruyen;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Models\Book_cate;
use App\Models\Tutruyen;
use App\Models\Comment;
use App\Models\Reply;
use App\Models\Like;

class TruyenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()){
            if(Auth::user()->level != 0){                
                $bk = Truyen::with('thuocnhieudanhmuctruyen','userW')->where('user_id',Auth::user()->id)->orderBy('id','DESC')->get();                
            }
            else{
                $bk = Truyen::with('thuocnhieudanhmuctruyen','userW')->orderBy('id','DESC')->get();
            }
            return view('admincp.truyen.index')->with(compact('bk'));
        }else{
            return redirect()->route('register');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cat = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user() != null && count($cat) != 0){
            return view('admincp.truyen.create')->with(compact('cat'));
        }else{
            return redirect('/');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'bk_name' => 'required|unique:book|max:255',
                'bk_des' => 'required|unique:book',
                'bk_slug' => 'required|unique:book|max:255',
                'bk_img' => 'required',
                'author' => 'required|max:255',
                'user_id' => 'required|max:255',
                'bk_at' => 'required',
                'complete' => 'required',
                'cate' => 'required|max:2048',
            ],
            [
                'bk_name.required' => 'Chưa nhập tên truyện',
                'bk_name.unipue' => 'Đã có truyện này',
                'bk_img.required' => 'Chưa có ảnh truyện',
                'bk_img.max' => 'Ảnh quá nặng, tối đa 2MB',
                'bk_des.required'  => 'Bắt buộc có giới thiệu',
                'author.required'  => 'Bắt buộc có tác giả',
                'bk_des.unipue' => 'Giới thiệu không được giống nhau',
                'cate.unipue' => 'Phải có ít nhất 1 danh mục',
            ]
        );
        $bk = new Truyen();
        $bk->bk_name = $data['bk_name'];
        $bk->bk_slug = $data['bk_slug'];
        $bk->user_id = $data['user_id'];
        $bk->bk_des = $data['bk_des'];
        $bk->bk_at = $data['bk_at'];
        $bk->author = $data['author'];
        $bk->like = 0;
        $bk->views = 0;
        $bk->vip = 0;
        $bk->c_chap = 0;
        $bk->complete = $data['complete'];

        $get_image = $request->bk_img;
        $path = 'public/upload/image/';

        $get_name_image = $get_image->getClientOriginalName();
        $cutname = preg_split ("/\./", $get_name_image);
        $name_image = $data['bk_slug'].'.'.$cutname[1];
        
        $get_image->move($path,$name_image);        
        $img = $path.$name_image;
        $bk->bk_img = url($img);

        foreach($data['cate'] as $key => $danh){
            $bk->cate_id = $danh[0];
        }
        $bk->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $bk->updated_at = Carbon::now('Asia/Ho_Chi_Minh');

        $bk->save();
        $bk->thuocnhieudanhmuctruyen()->attach($data['cate']);
        return redirect('/truyen')->with('status','Thêm truyện thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Truyen $cha,$id)
    {
        $cha = Truyen::find($id);
        if(Auth::user()){
            if($cha != null){
                if($cha->user_id == Auth::user()->id || Auth::user()->level == 0){
                    return view('admincp.truyen.show')->with(compact('cha'));
                }else{
                    return redirect()->back();
                }
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }        
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $bk = Truyen::with('userW')->find($id);
        if(Auth::user()){
            if($bk != null){  
                if(Auth::user()->id == $bk->user_id || Auth::user()->level == 0){
                    $thuocdanhmuc = $bk->thuocnhieudanhmuctruyen;
                    $cate = DanhmucTruyen::orderBy('id','ASC')->get();  
                    return view('admincp.truyen.edit')->with(compact('bk','cate','thuocdanhmuc'));
                }else{
                    return redirect()->back();
                }           
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->route('register');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->validate(
            [
                'bk_name' => 'required|max:255',
                'bk_des' => 'required',
                'bk_slug' => 'max:255',
                'bk_img' => 'max:2048',
                'author' => 'required|max:25',
                'bk_at' => 'required',
                'complete' => 'required',
                'cate' => 'required',
                'vip' => 'required',
            ],
            [
                'bk_name.required' => 'Chưa nhập tên truyện',
                'bk_img.max' => 'Ảnh quá nặng,tối đa 2MB',
                'bk_des.required'  => 'Bắt buộc có giới thiệu',
                'author.required'  => 'Bắt buộc có tác giả',
                'cate.required' => 'Phải có ít nhất 1 danh mục',
            ]
        );
        $bk = Truyen::with('userW')->find($id);

        $bk->thuocnhieudanhmuctruyen()->sync($data['cate']);

        $bk->bk_name = $data['bk_name'];        
        $bk->bk_slug = $data['bk_slug'];
        $bk->user_id =  $bk->user_id;
        $bk->bk_des = $data['bk_des'];
        $bk->bk_at = $data['bk_at'];
        $bk->author = $data['author'];
        $bk->views = $bk->views;
        $bk->like = $bk->like;
        $bk->c_chap = $bk->c_chap;


        $get_image = $request->file('bk_img');
        if($get_image != null){
            $path = 'public/upload/image/';    
            $cut = preg_split ("/\//", $bk->bk_img);
            if(file_exists($path.$cut[7])){
                unlink($path.$cut[7]);
            }    

            $get_name_image = $get_image->getClientOriginalName();
            $cutname = preg_split ("/\./", $get_name_image);
            $name_image = $data['bk_slug'].$cutname[1];

            $get_image->move($path,$name_image);        
            $img = $path.$name_image;
            $bk->bk_img = url($img);
        }else{
            $bk->bk_img = $bk->bk_img;
        }

        
        $bk->complete = $data['complete'];

        foreach($data['cate'] as $key => $danh){
            $bk->cate_id = $danh[0];
        }
        $bk->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        if(Auth::user()->level == 0){
            $truyen = Truyen::where('vip',1)->get();
            if(count($truyen) == 12){
                $bk->vip =$bk->vip;
                return redirect('xemtruyen/'.$bk->id)->with('errors','Đã đủ 12 truyện đề cử');
            }else{                  
                $bk->vip = $data['vip'];
                $bk->save();
                return redirect('xemtruyen/'.$bk->id)->with('status','Sửa truyện thành công');
            }
        }else{
            $bk->vip =$bk->vip;
            $bk->save();
            return redirect('xemtruyen/'.$bk->id)->with('status','Sửa truyện thành công');
        }        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {   
        if(Auth::user()->level == 0){
            $cmt = Comment::where('bk_id',$id)->get();
            if($cmt){
                foreach($cmt as $key => $val){                
                    Reply::where('cmt_id',$val->id)->delete();
                }            
                Comment::where('bk_id',$id)->delete();
            }
            $ch = Chapter::where('truyen_id',$id)->get();
            if($ch){
                foreach($ch as $key => $val){                 
                    unlink($val->content);
                }
                Chapter::where('truyen_id',$id)->delete();
            }
            Book_cate::where('bk_id',$id)->delete();
            Tutruyen::where('bk_id',$id)->delete();
            Like::where('bk_id',$id)->delete();
            $tr = Truyen::find($id);
            $cut = preg_split ("/\//", $tr->bk_img);
            unlink('public/upload/image/'.$cut[7]);
            $tr->delete();
        }else{
            $tr = Truyen::find($id);
            $tr->user_id = 0;
            $tr->save();
        }
        return redirect()->back()->with('status','Đã xoá truyện');
    }
}
