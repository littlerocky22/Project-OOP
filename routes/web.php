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

Route::get('/', 'BaseController@getIndex');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('products/{catalog_id}','ProductController@getProducts');
Route::get('product/{id}','ProductController@getOne');
Route::get('/basket','BasketController@getIndex');
Route::get('/basket/delete/{id}','BasketController@getDelete');
Route::post('basket/order','OrderController@postIndex');
Route::get('{url}', 'PageController@getIndex'); //последний !