<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'name','user_id','rep','created_at','cmt_id',
    ];
    protected $primaryKey = 'id';
    protected $table = 'rep_cmt';
}
