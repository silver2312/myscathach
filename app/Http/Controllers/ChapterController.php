<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Chapter;
use App\Models\Truyen;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Goutte;

class ChapterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
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
                'header' => 'required|unique:chapter|max:255',
                'content' => 'required|unique:chapter',
                'ch_slug' => 'required|unique:chapter|max:255',
                'active' => 'required|max:255',
                'truyen_id' => 'required|max:255',
                'position' => 'required|max:255',
            ],
            [
                'header.required' => 'Chưa nhập tiêu đề chương',
                'header.unipue' => 'Đã có tiêu đề này',
                'position.required' => 'Chưa có STT chương',
                'position.unipue' => 'STT không được giống nhau',
            ]
        );
        $ch = new Chapter();
        $ch->header = $data['header'];
        $ch->ch_slug = $data['ch_slug'];
        $ch->active = $data['active'];
        $ch->truyen_id = $data['truyen_id'];
        $ch->position = $data['position'];     
        $ch->views = 0;       
        $ch->crea_at = Carbon::now('Asia/Ho_Chi_Minh');

        //save file local
        $bk = Truyen::where('id',$data['truyen_id'])->first();
        $dir = 'public/upload/truyen/'.$bk->id;
        if( is_dir($dir) === false )
        {
            mkdir($dir);
        }
        $name = $data['position'].'.txt';
        $content = $data['content'];
        $file = fopen($dir . '/' . $name,'w');
        fwrite($file, $content);
        fclose($file);
        $ch->content = $dir.'/'.$name;

        $ch->save();
        return redirect()->back()->with('status','Thêm chương thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ch = Truyen::find($id);
        $ch_ps = Chapter::orderBy('position','DESC')->where('truyen_id',$id)->first();
        if($ch_ps){            
            $position = $ch_ps->position +1;
        }else{
            $position = 1 ;
        }
        $ch1 = Truyen::where('id',$id)->first();
        if(Auth::user()) {               
            if($ch1->user_id == Auth::user()->id || Auth::user()->level == 0){                
                return view('admincp.chapter.create')->with(compact('ch','position','ch1'));
            }else{
                return redirect('/');
            }
        }else{
            return redirect()->route('register');
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
        $ch = Chapter::with('truyenC')->find($id);
        $bk = Truyen::where('id',$id)->get();
        if($ch->content == null){
            $crawler = Goutte::request('GET', $ch->base_url);
            $content = $crawler->filter('#bigmaincontent > div.zhengwen_box > div.box_left > div.w_main > div.contentbox')->each(function ($node) {  
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
        $dir = $ch->content;
        $myfile = fopen($dir, "r") or die("Unable to open file!");   
        $content = fread($myfile,filesize($dir));
        fclose($myfile);         
        if(Auth::user()) {            
            return view('admincp.chapter.edit')->with(compact('ch','content'));
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
                'header' => 'required|max:255',
                'content' => 'required',
                'ch_slug' => '',
                'active' => 'required|max:255',
                'truyen_id' => 'required|max:255',
                'position' => 'required|max:255',
            ],
            [
                'header.required' => 'Chưa nhập tiêu đề chương',
                'header.unipue' => 'Đã có tiêu đề này',
                'position.required' => 'Chưa có STT chương',
                'position.unipue' => 'STT không được giống nhau',
            ]
        );
        $ch = Chapter::find($id);                   
        $ch->header = $data['header'];
        $ch->active = $data['active'];
        $ch->truyen_id = $data['truyen_id'];
        $ch->position = $data['position'];        
        $ch->views = $ch->views;
        $ch->upd_at = Carbon::now('Asia/Ho_Chi_Minh');

        $bk = Truyen::where('id',$data['truyen_id'])->first();
        $file = fopen($ch->content,'w'); 
        fwrite($file, $data['content']);
        fclose($file);
        $ch->content = $ch->content;

        $ch->save();
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
        $ch = Chapter::find($id);
        unlink($ch->content);
        $ch->delete();
        return redirect()->back()->with('status','Đã xoá 1 chương truyện');
    }
}
