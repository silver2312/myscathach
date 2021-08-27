<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class book_cate extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
    	'cate_id','bk_id'
    ];
    protected $primaryKey = 'id';
 	protected $table = 'book_cate';
}
