<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Carbon\Carbon;
use App\Models\Profile;
use App\Models\Truyen;
use App\Models\Tutruyen;
use App\Models\Comment;
use App\Models\Reply;
use App\Models\Like;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user() != null && Auth::user()->level == 0){
            $user = User::orderBy('created_at','ASC')->get(); 
            return view('admincp.user.index')->with(compact('user'));
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::user() != null && Auth::user()->level == 0){
            $user = User::where('id',$id)->first(); 
            return view('admincp.user.edit')->with(compact('user'));
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
                'name' => 'required|max:25',
                'id' => 'required',
                'email' => 'required',
                'u_img' => 'required',
                'level' => 'required',
            ],
            [
                'name.required' => 'Chưa nhập tên',
                'u_img.required' => 'Chưa có ảnh',
                'email.required'  => 'Bắt buộc có email',
            ]
        );
        $user = User::find($id);
        $profile = Profile::where('uid',$id)->first();
        $tr = Truyen::where('user_id',$id)->get();
        $like = Like::where('uid',$id)->get();
        $tu = Tutruyen::where('user_id',$id)->get();
        $cmt = Comment::where('user_id',$id)->get();
        $rep = Reply::where('user_id',$id)->get();
        if($user->id != $data['id']){
            if($tr != null){     
                foreach($tr as $key => $value){                                    
                    $value->user_id = $data['id'];
                    $value->save();
                }           
            }
            if($like != null){ 
                foreach($like as $key => $value){
                    $value->uid = $data['id'];
                    $value->save();
                }
            }
            if($tu != null){ 
                foreach($tu as $key => $value){
                    $value->user_id = $data['id'];
                    $value->save();
                }
            }
            if($cmt != null){
                foreach($cmt as $key => $value){
                    $value->user_id = $data['id'];
                    $value->save();
                }
            }
            if($rep != null){
                foreach($rep as $key => $value){
                    $value->user_id = $data['id'];
                    $value->save();
                }
            }
            if($profile != null){           
                $profile->uid = $data['id'];
                $profile->save();
            }
            $user->id = $data['id'];
        }else{
            $user->id = $user->id;
        }
        $user->name = $data['name'];
        $user->email = $data['email'];
        $user->level = $data['level'];
        $user->u_img = $data['u_img'];
        $user->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        $user->save();
        return redirect('/QL-User')->with('status', 'Sửa thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $profile = Profile::where('uid',$id)->first();
        $tr = Truyen::where('user_id',$id)->get();
        $like = Like::where('uid',$id)->get();
        $tu = Tutruyen::where('user_id',$id)->get();
        $cmt = Comment::where('user_id',$id)->get();
        $rep = Reply::where('user_id',$id)->get();
        if($profile != null){
            $profile->delete();
        }
        if($tr != null){     
            foreach($tr as $key => $value){                                    
                $value->user_id = '0';
                $value->save();
            }           
        }
        if($like != null){ 
            foreach($like as $key => $value){
                $value->delete();
            }
        }
        if($tu != null){ 
            foreach($tu as $key => $value){
                $value->delete();
            }
        }
        if($cmt != null){
            foreach($cmt as $key => $value){
                $value->delete();
            }
        }
        if($rep != null){
            foreach($rep as $key => $value){
                $value->delete();
            }
        }
        User::where('id',$id)->delete();
        return redirect()->back()->with('status','Đã xoá');
    }
}
