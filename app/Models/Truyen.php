<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Truyen extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'bk_name','bk_des','bk_slug','bk_img','cate_id','user_id','bk_at','author','like','created_at','updated_at','vip','complete','c_chap'
    ];
    protected $primaryKey = 'id';
    protected $table = 'book';
    public function danhmucTR(){
        return $this->belongsTo('App\Models\DanhmucTruyen','cate_id','id');
    }
    public function userW(){
        return $this->belongsTo('App\Models\User','user_id','id');
    }
    public function chapter(){
        return $this->hasMany('App\Models\Chapter')->orderBy('position','DESC');
    }
    public function thuocnhieudanhmuctruyen(){
        return $this->belongsToMany(DanhmucTruyen::class,'book_cate','bk_id','cate_id');
    }
    public function nhieutu(){
        return $this->belongsToMany(User::class,'book_list','bk_id','user_id');
    }
    public function nhieulike(){
        return $this->belongsToMany(User::class,'book_like','bk_id','user_id');
    }
    public function mcmt(){
        return $this->hasMany('App\Models\Comment');
    }
    public function mrep(){
        return $this->hasMany('App\Models\Reply');
    }
    // public function nhieutruyen(){
    //     return $this->belongsToMany(Tutruyen::class,'book_list','bk_id','user_id');
    // }
}
