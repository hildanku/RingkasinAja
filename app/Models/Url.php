<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User as UserModel;

class Url extends Model
{
    use HasFactory;

    protected $table = "urls";

    protected $fillable = ['original_url', 'short_url', 'user_id'];

    public function user()
    {
        return $this->belongsTo(UserModel::class, 'user_id');
    }
}
