<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Race_ene extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
    	'race_id','energy_id'
    ];
    protected $primaryKey = 'id';
 	protected $table = 'race_ene';
}
