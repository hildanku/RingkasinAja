<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Url;

class UrlController extends Controller
{

    public function indexpublic()
    {
        return view('url');
    }
    // public function shorten(Request $request)
    // {
    //     $request->validate([
    //         'original_url' => 'required',
    //     ]);
    //     $url = new Url();
    //     $url->original_url = $request->url;
    //     $url->short_url = $request->url . rand(1000, 9999);
    //     $url->user_id = 1;
    //     $url->save();
    //     return redirect('/url/shorten')->with('success', 'URL Shortened Successfully');
    // }
    private function generateRandomString($length = 4)
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
    public function shorten(Request $request)
{
    $request->validate([
        'original_url' => 'required',
    ]);

    $url = new Url();
    $url->original_url = $request->input('original_url'); // Correctly access original_url
    $url->short_url = $this->generateRandomString(4); // Append random alphanumeric string
    $url->user_id = 1;
    $url->save();

    return redirect('/url/shorten')->with('success', 'URL Shortened Successfully');
}

}
