<?php

namespace App\Http\Controllers;
set_time_limit(500);
use Illuminate\Http\Request;
use Goutte;
use App\Models\Truyen;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Models\Chapter;
use App\Models\Book_cate;

class SurfController extends Controller
{
    public function nhung(Request $request){
        $data = $request->all();
        $cut = preg_split ("/\./", $data['link']);
        if($cut[1] != "uukanshu"){
            return redirect()->back()->with('err','Bạn nhập nhầm link hoặc chọn nhầm host');
        }else{
            // http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F270%2F&t=vi
            $host = "http://dichtienghoa.com/translate/www.uukanshu.com?u=";
            $url = $host.$data['link'].'&t=vi';  
            $check_url = Truyen::orderBy('id','DESC')->where('base_url',$url)->first();
            if($check_url!=null){
              return redirect('xemtruyen/'.$check_url->id);
            }else{
              $crawler = Goutte::request('GET', $url);    
              $truyen = new Truyen();
              $truyen->curr_url = $data['link'];
              $truyen->base_url = $url;
              $truyen->host = $data['host'];
              $truyen->user_id = Auth::user()->id;
              //get giới thiệu truyện
              $truyen->bk_des = $crawler->filter('.jieshao_content > h3')->each(function ($node) {  
                return $node->html();       
              })[0];
              //get tác giả tên
              $truyen->author = $crawler->filter('.jieshao_content > h2 > a')->each(function ($node) {  
                return $node->text();       
              })[0];
              //Get img link
              $url_img = $crawler->filter('.bookImg > img')->each(function ($node) {  
                return $node->attr('src');        
              })[0];
              $image_stream = file_get_contents($url_img);
              $cut = preg_split ("/\//", $url_img);
              $file = 'public/upload/image/'.$cut[6];
              file_put_contents($file, $image_stream);
              $truyen->bk_img = url($file);
              $truyen->like = 0;
              $truyen->views = 0;
              $truyen->vip = 0;
              $truyen->c_chap = 0;
              $truyen->complete = 0;
              $truyen->cate_id = 55;
              $truyen->bk_at = 0;
              $truyen->created_at = Carbon::now('Asia/Ho_Chi_Minh');
              $truyen->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
          
              $name = $crawler->filter('.jieshao_content > h1 > a')->each(function ($node) {  
                return $node->html();       
              })[0];    
              $text = "mới nhất chương";
              $fin_text = preg_split ("/".$text."/", $name)[0];
              if($fin_text){
                $truyen->bk_name = $fin_text;
              }      
              $truyen->save();
          
              $truyen = Truyen::orderBy('updated_at','DESC')->first();          
              $cate = new Book_cate();
              $cate->bk_id = $truyen->id;
              $cate->cate_id = 55;
              $cate->save();
              
            //   $po = $crawler->filter('#chapterList > li > a')->each(function ($node) { 
            //     // dump($node->html());     
            //     return $node->attr('href');    
            //   });
            //   $max_position = count($po) - 1;
            //   $position = 1;
            //   while($max_position >= 0){
            //     $chap = new Chapter();
            //     // http://dichtienghoa.com/translate/www.uukanshu.com?u=https://www.uukanshu.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F270%2F89584.html&t=vi
            //     $base_url = 'http://dichtienghoa.com'.$po[$max_position];
            //     $chap->base_url = $base_url;
            //     $chap->truyen_id = $truyen->id;
            //     $chap->active = 0;
            //     $chap->position = $position;
            //     $chap->views = 0;
            //     $chap->crea_at =	Carbon::now('Asia/Ho_Chi_Minh');
            //     $chap->upd_at	= Carbon::now('Asia/Ho_Chi_Minh');
            //     $chap->save();
            //     $max_position--;
            //     $position++;
            //   }
              return redirect()->back()->with('status','Đã nhúng');
        }
        
        }
    }
    public function res_chap($bid){
        $truyen = Truyen::where('id',$bid)->first();
        $crawler = Goutte::request('GET', $truyen->base_url);        
        
        $c = $crawler->filter('#chapterList > li > a')->each(function ($node) {
            return 'http://dichtienghoa.com'.$node->attr('href');            
        });
        // $chap1 = Chapter::where('truyen_id',$bid)->orderBy('position','DESC')->get();
        // if(count($chap1) == 0){
        //     $position = 1;
        // }else{
        //     $chap = Chapter::where('truyen_id',$bid)->orderBy('position','DESC')->first();
        //     $position = intval($chap->position) + 1;
        // }
        $num = 0;
        $max_num = count($c);
        $position = $max_num;
        while($num < $max_num){            
            $ch = Chapter::where('base_url',$c[$num])->first();
            if($ch == null){  
                $ch1 = new Chapter();
                $ch1->truyen_id = $bid;
                $ch1->position = $position;
                $ch1->base_url = $c[$num];            
                $ch1->active = 0;
                $ch1->views = 0;
                $ch1->crea_at =	Carbon::now('Asia/Ho_Chi_Minh');
                $ch1->upd_at = Carbon::now('Asia/Ho_Chi_Minh');
                $ch1->save();
                $trs = Truyen::find($bid);
                $trs->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
                $trs->save();
                $position--;              
            }            
            $num++;
        }
        return redirect('xemtruyen/'.$bid)->with('status','Đã cập nhật danh sách chương');
    }
}
