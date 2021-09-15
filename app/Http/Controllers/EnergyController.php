<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Energy;
use App\Models\DanhmucTruyen;

class EnergyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $energy = Energy::orderBy('id','ASC')->get();
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user()!= null && Auth::user()->level == 0){
            if(count($energy) != 0){
                return view('admincp.nangluong.index')->with(compact('energy','cate'));
            }else{
                return redirect('nangluong/create');
            }
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
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user()!= null && Auth::user()->level == 0){
            return view('admincp.nangluong.create')->with(compact('cate'));
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
                'name' => 'required|unique:energy|max:255',
                'des' => 'required|unique:energy',
            ],
            [
                'name.required' => 'Chưa nhập tên năng lượng',
                'name.unipue' => 'Đã có năng lượng này',
                'des.required'  => 'Bắt buộc có giới thiệu',
                'des.unipue' => 'Giới thiệu không được giống nhau',
            ]
        );
        $energy = new Energy();
        $energy->name = $data['name'];
        $energy->des = $data['des'];
        $energy->save();
        return redirect()->back()->with('status','Thêm năng lượng thành công');
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
        $energy = Energy::find($id);
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user()!= null && Auth::user()->level == 0){
            return view('admincp.nangluong.edit')->with(compact('cate','energy'));
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
                'name' => 'required|max:255',
                'des' => 'required',
                //'cate_slug' => 'required|max:255',
            ],
            [
                'name.required' => 'Chưa nhập tên năng lượng',
                'des.required'  => 'Bắt buộc có giới thiệu',
            ]
        );
        $energy = Energy::find($id);
        $energy->name = $data['name'];
        $energy->des = $data['des'];
        $energy->save();
        return redirect()->back()->with('status','Sửa thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
