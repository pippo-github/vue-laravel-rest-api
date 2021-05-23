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


Route::get('/', function () {
    return view("paginaIniziale");
});

Route::get('/articoli', "App\Http\Controllers\ControllerApplicazione@index");


Route::get("/articolo/api/{parametroID}", "App\Http\Controllers\ControllerApplicazione@show");
Route::put("/articolo/api/", "App\Http\Controllers\ControllerApplicazione@store");
Route::post("/articolo/api/", "App\Http\Controllers\ControllerApplicazione@store");
Route::delete("/articolo/api/{parametroID}", "App\Http\Controllers\ControllerApplicazione@destroy");
