<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use App\Models\Book_cate;
use Illuminate\Support\Facades\Auth;

class DanhmucController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user()!= null && Auth::user()->level == 0){
            return view('admincp.danhmuctruyen.index')->with(compact('cate'));
        }else{
            return redirect('/');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::user()!= null && Auth::user()->level == 0){
            return view('admincp.danhmuctruyen.create');
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
                'cate_name' => 'required|unique:category|max:255',
                'cate_des' => 'required|unique:category',
                'cate_slug' => 'required|unique:category|max:255',
            ],
            [
                'cate_name.required' => 'Chưa nhập tên danh mục',
                'cate_name.unipue' => 'Đã có danh mục này',
                'cate_des.required'  => 'Bắt buộc có giới thiệu',
                'cate_des.unipue' => 'Giới thiệu không được giống nhau',
            ]
        );
        $cate = new DanhmucTruyen();
        $cate->cate_name = $data['cate_name'];
        $cate->cate_slug = $data['cate_slug'];
        $cate->cate_des = $data['cate_des'];
        $cate->save();
        return redirect()->back()->with('status','Thêm danh mục thành công');
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
        $cate = DanhmucTruyen::find($id);
        if(Auth::user()!= null && Auth::user()->level == 0){
            return view('admincp.danhmuctruyen.edit')->with(compact('cate'));
        }else{
            return redirect('/');
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
                'cate_name' => 'required|max:255',
                'cate_slug' => 'required|max:255',
                'cate_des' => 'required',
                //'cate_slug' => 'required|max:255',
            ],
            [
                'cate_name.required' => 'Chưa nhập tên danh mục',
                'cate_des.required'  => 'Bắt buộc có giới thiệu',
            ]
        );
        $cate = DanhmucTruyen::find($id);
        $cate->cate_name = $data['cate_name'];
        $cate->cate_slug = $data['cate_slug'];
        $cate->cate_des = $data['cate_des'];
        $cate->save();
        return redirect()->back()->with('status','Sửa danh mục thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Book_cate::where('cate_id',$id)->delete();
        DanhmucTruyen::find($id)->delete();
        return redirect()->back()->with('status','Đã xoá danh mục');
    }
}
