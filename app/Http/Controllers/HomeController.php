<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use App\Models\Truyen;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $cate = DanhmucTruyen::orderBy('id','ASC')->get();
        $bk = Truyen::orderBy('views','DESC')->where('bk_at',0)->take(12)->get();        
        $bk1 = Truyen::orderBy('like','DESC')->where('bk_at',0)->take(12)->get();
        $bk_up = Truyen::orderBy('updated_at','DESC')->where('bk_at',0)->take(10)->get();
        $bk_vip = Truyen::orderBy('views','DESC')->where('vip','=',1)->where('bk_at',0)->take(6)->get();
        if($cate != null && $bk != null && $bk1 != null && $bk_up !=null && $bk_vip !=null){            
            return redirect('/')->with(compact('cate','bk','bk_up','bk_vip','bk1'));
        }else{
            return redirect('/');
        } 
    }
}
