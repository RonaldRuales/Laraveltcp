<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class tuse extends Model
{
    protected $table = "T_USER";
    protected $fillable = ['US_USUARIO','US_CLAVE'];
}

