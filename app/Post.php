<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    // The following is to override the table name, primary key and timestamps 
    // (they are already automatically created for us by Laravel)
    // Table Name
    protected $table = 'posts';
    // Primary Key
    public $primaryKey = 'id';
    // Timestamps
    public $timestamps = true;
} 
