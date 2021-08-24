<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DanhmucTruyen extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'cate_name','cate_des','cate_slug',
    ];
    protected $primaryKey = 'id';
    protected $table = 'category';
    public function truyen(){
        return $this->hasMany('App\Models\Truyen');
    }
    public function nhieutruyen(){
        return $this->belongsToMany(Truyen::class,'book_cate','cate_id','bk_id');
    }
}
