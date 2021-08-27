<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tutruyen extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'bk_id','user_id'
    ];
    protected $primaryKey = 'id';
    protected $table = 'book_list';
    // public function nhieutruyen(){
    //     return $this->belongsToMany(Truyen::class,'book_list','bk_id','user_id');
    // }
}
