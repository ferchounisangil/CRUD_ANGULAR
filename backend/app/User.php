<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Model
{
	//use SoftDeletes; // esto me causó dolores de cabeza no me mapeaba los datos en el frontend y tuve que inactivarlo

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre', 'telefono','ciudad',
    	
    ];
    
    protected $dates = ['deleted_at'];
    
    public function setcpfAttribute($telefono)
    {
    	$this->attributes['telefono'] = str_replace(array('.', '-'),'',$telefono);
    	 
    }

}
