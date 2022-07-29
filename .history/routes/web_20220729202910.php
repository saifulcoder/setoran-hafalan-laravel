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
    return view('welcome');
});
Route::get('admin/setoranhafalan/addayat/{id}','AdminSetoranhafalanController@addayat');
Route::post('admin/setoranhafalan/saveayat','AdminSetoranhafalanController@saveayat');
Route::get('admin/setoranhafalan/del/{id}/{surat}/{user}','AdminSetoranhafalanController@delhafalan');

Route::post('admin/laporan/get',)


Route::get('surat/{id}/{id_santri}','Hafalan\ListSurat@surat');
