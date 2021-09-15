<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Toc_Thechat extends Model
{
    use HasFactory;
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
    	'race_id','phy_id'
    ];
    protected $primaryKey = 'id';
 	protected $table = 'race_phy';
}
