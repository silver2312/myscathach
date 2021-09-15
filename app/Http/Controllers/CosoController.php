<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Toc;
use App\Models\Thechat;
use App\Models\Toc_Thechat;
use App\Models\DanhmucTruyen;

class CosoController extends Controller
{
    public function index(){
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        $toc_cs = Toc_Thechat::get();
        $toccs = [];
        foreach($toc_cs as $key => $value){
            $toccs[] = $value->phy_id;
        }
        $thechat = Thechat::with('nhieu_toc')->whereIn('id',$toccs)->get();
        return view('admincp.cosott.index')->with(compact('cate','thechat','toc_cs'));
    }
    public function change_buff($ad_id, Request $request){
        $data = $request->all();
        $ad = Toc_Thechat::find($ad_id);
        $ad->buff = $data['buff'];
        $ad->save();
        return redirect()->back()->with('status','Đã thay đổi');
    }
}
