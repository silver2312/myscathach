<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'name','user_id','bk_id','cmt','created_at',
    ];
    protected $primaryKey = 'id';
    protected $table = 'cmt_book';
    public function mrep(){
        return $this->hasMany('App\Models\Reply','cmt_id','id');
    }
}
