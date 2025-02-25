<?php

use App\Http\Controllers\API\AuthAPIController;
use App\Http\Controllers\API\BookAPIController;
use App\Http\Controllers\API\GenreAPIController;
use App\Http\Controllers\API\HomepageSettingAPIController;
use App\Http\Controllers\API\TestimonialAPIController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// User Login API
Route::post('/login', [AuthAPIController::class, 'login']);

/** Get library logo and name */
Route::get('library-details', [AuthAPIController::class, 'getLibraryDetails']);

// member login API
Route::post('member-login', [AuthAPIController::class, 'memberLogin']);

include 'api/v1.php';
include 'api/b1.php';
include 'api/m1.php';

/*
|--------------------------------------------------------------------------
| Swagger
|--------------------------------------------------------------------------
*/
Route::get('docs', function () {
    return view('redoc.index');
});

Route::get('mobile-apis', function () {
    return view('mobile.index');
});

/** Search books */
Route::get('books', [BookAPIController::class, 'index'])->name('books.index');
Route::get('total-books', [BookAPIController::class, 'totalBooks'])->name('books.count');

/** homepage settings */
Route::get('homepage-settings', [HomepageSettingAPIController::class, 'index']);

/** Get all testimonials */
Route::get('testimonials', [TestimonialAPIController::class, 'index']);

//get All Genres
Route::get('genres', [GenreAPIController::class, 'getAllGenres']);
