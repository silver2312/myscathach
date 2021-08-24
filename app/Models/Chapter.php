<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'truyen_id','header','active','content','ch_slug','position','views','crea_at','upd_at'
    ];
    protected $primaryKey = 'id';
    protected $table = 'chapter';
    public function truyenC(){
        return $this->belongsTo('App\Models\Truyen', 'truyen_id','id');
    }
}
