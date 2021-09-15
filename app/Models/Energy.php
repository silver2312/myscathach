<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Energy extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'name','des'
    ];
    protected $primaryKey = 'id';
    protected $table = 'energy';
    public function nhieu_toc(){
        return $this->belongsToMany(Toc::class,'race_ene','energy_id','race_id');
    }
}
