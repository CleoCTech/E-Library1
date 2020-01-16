<?php

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



/*Route::get('/hello', function () {
    return '<h>Hello Nariphon</h>';
});*/

/*Route::get('/about', function() {
	return view('pages.about');
});

/*Route::get('/users/{id}/{mame}', function($id,$name) {
	return 'This is user ' .$name.' with an id of ' .$id;
});*/

Route::get('/', 'PagesController@index');
Route::get('/about', 'PagesController@about');
Route::get('/services', 'PagesController@services');
Route::get('/chat', 'testHomeController@testHome');
Route::get('/home', 'PagesController@home');
Route::get('/dean', 'PagesController@dean');
Route::get('/clubs', 'PagesController@clubs');
Route::get('/sports', 'PagesController@sports');
Route::get('/logout', 'Auth\LoginController@userlogout')->name('admin.logout'); 

Route::prefix('admin')->group(function(){
	// Route::get('/login', 'AdminLoginController@showLoginform')->name('admin.login');
	// Route::post('/login', 'AdminLoginController@login')->name('admin.login.submit');
	 //Route::get('/', 'AdminController@index')->name('admin.dashboard');
	// Route::get('/logout', 'AdminLoginController@logout')->name('admin.logout'); 
	Route::get('/users', 'AdminController@users');
	Route::get('/roles', 'AdminController@roles');
	Route::get('/create', 'AdminController@create');
});

// Route::get('/chat', 'PagesController@chat');

Route::resource('posts', 'PostsController'); 
Route::resource('admin', 'AdminController');

Auth::routes();
Route::get('/login-redirect', 'Auth\LoginController@loginRedirect');
Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
Route::get('/message/{id}', 'testHomeController@getMessage')->name('message');
Route::post('/message', 'testHomeController@sendMessage');
Route::get('/contatcs', 'ContactsController@get');