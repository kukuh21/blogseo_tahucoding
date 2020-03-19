<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Posts;

class Tags extends Model
{
    protected $table = 'tags';
    protected $fillable = ['name','slug'];

    public function posts() {
        return $this->belongsToMany('App\Posts');
    }
}
