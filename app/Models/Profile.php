<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'uid','sex','bio','des','web','git','twi','ins','fb'
    ];
    protected $primaryKey = 'id';
    protected $table = 'profile';
}
