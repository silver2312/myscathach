<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'bk_id','user_id'
    ];
    protected $primaryKey = 'id';
    protected $table = 'book_like';
}
