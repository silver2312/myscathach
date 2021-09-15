<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Toc extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'name','des','energy_id','phy_id','percent'
    ];
    protected $primaryKey = 'id';
    protected $table = 'race';
    public function nhieu_ene(){
        return $this->belongsToMany(Energy::class,'race_ene','race_id','energy_id');
    }
    public function nhieu_thechat(){
        return $this->belongsToMany(Thechat::class,'race_phy','race_id','phy_id');
    }
}
