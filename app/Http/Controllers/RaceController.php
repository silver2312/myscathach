<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Energy;
use App\Models\Toc;
use App\Models\Thechat;

class RaceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user() != null && Auth::user()->level == 0){ 
            $race = Toc::with('nhieu_ene','nhieu_thechat')->orderBy('id','DESC')->paginate(15);           
            return view('admincp.toc.index')->with(compact('race'));
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
        $energy = Energy::orderBy('id','ASC')->get();
        $thechat = Thechat::get();
        if(Auth::user() != null && count($energy) != 0){
            return view('admincp.toc.create')->with(compact('energy','thechat'));
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
                'name' => 'required|unique:race|max:255',
                'des' => 'required|unique:race',
                'ene' => 'required',
                'thechat' => 'required',
                'percent' => 'required|max:20',
            ],
            [
                'name.required' => 'Chưa nhập tên',
                'name.unipue' => 'Đã có tộc này',
                'des.required'  => 'Bắt buộc có giới thiệu',
                'ene.required' => 'Phải có ít nhất 1 năng lượng',
                'thechat.required' => 'Phải có ít nhất 1 thể chất',
                'percent.required' => 'Phải nhập 1 số lớn hơn 0.000000001 và nhỏ hơn bằng 1',
            ]
        );
        $race = new Toc();
        $race->name = $data['name'];
        $race->des = $data['des'];
        $race->percent = $data['percent'];
        foreach($data['ene'] as $key => $ene){
            $race->energy_id = $ene[0];
        }
        foreach($data['thechat'] as $key => $thechat){
            $race->phy_id = $thechat[0];
        }
        $race->save();
        $race->nhieu_ene()->attach($data['ene']);
        $race->nhieu_thechat()->attach($data['thechat']);
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
        $race = Toc::with('nhieu_ene')->find($id);
        if(Auth::user()!= null && Auth::user()->level == 0){
            if($race != null){  
                $ene = $race->nhieu_ene;
                $energy = Energy::orderBy('id','ASC')->get();  
                $the = $race->nhieu_thechat;
                $thechat = Thechat::get();
                return view('admincp.toc.edit')->with(compact('race','energy','ene','the','thechat'));   
            }else{
                return redirect()->back();
            }
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
                'ene' => 'required',
                'the' => 'required',
                'percent' => 'required|max:20',
            ],
            [
                'name.required' => 'Chưa nhập tên truyện',
                'des.required'  => 'Bắt buộc có giới thiệu',
                'ene.required' => 'Phải có ít nhất 1 loại năng lượng',
                'the.required' => 'Phải có ít nhất 1 loại thể chất',
                'percent.required' => 'Phải nhập 1 số lớn hơn 0.000000001 và nhỏ hơn bằng 1',
            ]
        );
        $race = Toc::find($id);

        $race->nhieu_ene()->sync($data['ene']);
        $race->nhieu_thechat()->sync($data['the']);

        $race->name = $data['name'];  
        $race->des = $data['des'];
        $race->percent = $data['percent'];

        foreach($data['ene'] as $key => $danh){
            $race->energy_id = $danh[0];
        }
        foreach($data['the'] as $key => $val){
            $race->phy_id = $val[0];
        }


        $race->save();
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
