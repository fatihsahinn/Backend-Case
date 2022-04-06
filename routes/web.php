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

Route::get('/resourcerest','App\Http\Controllers\HomePageController@resource_output_index')->name('page.resourcerest');

Route::get('/fullstack','App\Http\Controllers\HomePageController@full_stack_output_index')->name('page.fullstack');

Route::get('/rest','App\Http\Controllers\HomePageController@rest_output_index')->name('page.rest');

Route::get('/http','App\Http\Controllers\HomePageController@http_index')->name('page.http');
