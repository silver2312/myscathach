<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Thechat extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'name','des','percent'
    ];
    protected $primaryKey = 'id';
    protected $table = 'physical';
    public function nhieu_toc(){
        return $this->belongsToMany(Toc::class,'race_phy','phy_id','race_id');
    }
}
