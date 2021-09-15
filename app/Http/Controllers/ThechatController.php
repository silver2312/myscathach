<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use Illuminate\Support\Facades\Auth;
use App\Models\Thechat;

class ThechatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $thechat = Thechat::orderBy('id','ASC')->get();
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user()!= null && Auth::user()->level == 0){
            if(count($thechat) != 0){
                return view('admincp.thechat.index')->with(compact('thechat','cate'));
            }else{
                return redirect('thechat/create');
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
            return view('admincp.thechat.create')->with(compact('cate'));
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
                'name' => 'required|unique:physical|max:255',
                'des' => 'required|unique:physical',
                'percent' => 'required',
            ],
            [
                'name.required' => 'Chưa nhập tên thể chất',
                'name.unipue' => 'Đã có thể chất này',
                'des.required'  => 'Bắt buộc có giới thiệu',
                'percent.required'  => 'Bắt buộc có tỷ lệ xuất hiện',
                'des.unipue' => 'Giới thiệu không được giống nhau',
            ]
        );
        $thechat = new Thechat();
        $thechat->name = $data['name'];
        $thechat->des = $data['des'];
        $thechat->percent = $data['percent'];
        $thechat->save();
        return redirect()->back()->with('status','Thêm thành công');
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
        $thechat = Thechat::find($id);
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        if(Auth::user()!= null && Auth::user()->level == 0){
            return view('admincp.thechat.edit')->with(compact('cate','thechat'));
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
                'percent' => 'required',
            ],
            [
                'name.required' => 'Chưa nhập tên thể chất',
                'des.required'  => 'Bắt buộc có giới thiệu',
                'percent.required'  => 'Bắt buộc có tỷ lệ xuất hiện',
            ]
        );
        $thechat = Thechat::find($id);
        $thechat->name = $data['name'];
        $thechat->des = $data['des'];
        $thechat->percent = $data['percent'];
        $thechat->save();
        return redirect()->back()->with('status','Thêm thành công');
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
