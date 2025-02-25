<?php

use App\Http\Controllers\API\V1\StripeApiController;
use Illuminate\Support\Facades\Artisan;
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
    return view('home');
});

Route::middleware('eBook')->group(function () {
    // download e-book
    Route::get('v1/book-items/{book_item}/download',
        [App\Http\Controllers\API\M1\BookItemAPIController::class, 'downloadEBook'])->name('member.download-e-book');

    // download e-book
    Route::get(
        'b1/book-items/{book_item}/download',
        [App\Http\Controllers\API\B1\BookItemAPIController::class, 'downloadEBook'])
        ->name('admin.download-e-book');
});

Route::get('/upgrade-to-v3-5-0', function () {
    Artisan::call('db:seed', ['--class' => 'RemovePenaltiesSeeder']);
});

Route::get('api/v1/payment-success', [StripeApiController::class,'paymentSuccess']);
Route::get('api/v1/failed-payment', [StripeApiController::class,'handleFailedPayment']);
