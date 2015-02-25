<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('Login.index');
});
Route::resource("Beranda","BerandaController");
Route::resource("Sekolah","SekolahController");
Route::resource("Tentang","TentangController");
Route::resource("Kontak","KontakController");
Route::resource("Admin","AdminController");
Route::resource("Login","LoginController");
Route::resource("Adminmenu","AdminmenuController");
Route::resource("Smk10","Smk10Controller");
Route::resource("Smk10jurusan","Smk10jurusanController");
Route::resource("Smk10user","Smk10userController");
Route::resource("Xrpl","XrplController");
Route::resource("Sepuluhrpladmin","SepuluhrpladminController");

Route::post("Sepuluhrpladmin/post", "SepuluhrpladminController@store");
Route::get("Sepuluhrpladmin/{id}/destroy", "SepuluhrpladminController@destroy");
Route::get('Sepuluhrpladmin/edit/{id}', 'SepuluhrpladminController@edit');
Route::post('Sepuluhrpladmin/update/{id}', array('as' => 'Sepuluhrpladmin.update', 'uses' => 'SepuluhrpladminController@update'));
