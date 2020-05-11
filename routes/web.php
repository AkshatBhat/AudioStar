<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/about', function () {
//     return view('pages.about');
// });

Route::get('/', 'PostsController@index');
Route::get('/about', 'PagesController@about');
Route::get('/services', 'PagesController@services');
Route::get('/welcome', 'PagesController@welcome');
Route::get('/contact', 'PagesController@contact');
Route::get('/allmusic', 'PagesController@allmusic');
Route::get('/myplaylists', 'PagesController@myplaylists');
Route::get('/likedsongs', 'PagesController@likedsongs');
Route::get('/songs/read-data','PostsController@readSongsData');

Route::resource('posts','PostsController');

Route::get('/search','PagesController@search');