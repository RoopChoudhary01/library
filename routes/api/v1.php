<?php

use App\Http\Controllers\API\V1\AuthorAPIController;
use App\Http\Controllers\API\V1\BookAPIController;
use App\Http\Controllers\API\V1\BookItemAPIController;
use App\Http\Controllers\API\V1\BookRequestAPIController;
use App\Http\Controllers\API\V1\CountryAPIController;
use App\Http\Controllers\API\V1\IssuedBookAPIController;
use App\Http\Controllers\API\V1\MemberAPIController;
use App\Http\Controllers\API\V1\MemberAuthController;
use App\Http\Controllers\API\V1\MemberSettingAPIController;
use App\Http\Controllers\API\V1\MembershipPlanAPIController;
use App\Http\Controllers\API\V1\SettingAPIController;
use App\Http\Controllers\API\V1\StripeApiController;
use App\Http\Controllers\API\V1\TransactionAPIController;

/**
 * Member Auth Middleware
 */
Route::middleware(['auth:sanctum', 'member.auth', 'subscription'])->group(function () {
    // Reserve Book
    Route::post('books/{book_item}/reserve-book', [IssuedBookAPIController::class, 'reserveBook'])
        ->name('reserve-book');
    // Un-Reserve Book
    Route::post('books/{book_item}/un-reserve-book', [IssuedBookAPIController::class, 'unReserveBook'])
        ->name('un-reserve-book');
    // books history
    Route::get('books-history', [IssuedBookAPIController::class, 'booksHistory'])->name('books-history.index');

    // get logged in member details
    Route::get('member-details', [MemberAPIController::class, 'getLoggedInMemberDetails'])->name('member-details');

    // get all books
    Route::get('books', [BookAPIController::class, 'index'])->name('books.index');

    // Book search
    Route::get('search-books', [BookItemAPIController::class, 'searchBooks'])->name('search-books.index');

    // update logged in member profile
    Route::post('update-member-profile', [MemberAPIController::class, 'updateMemberProfile'])
        ->name('update-member-profile');

    // delete login member image
    Route::post('remove-image', [MemberAPIController::class, 'removeImage'])->name('remove-image');

    Route::get('countries', [CountryAPIController::class, 'index'])->name('countries.index');

    Route::get('authors', [AuthorAPIController::class, 'index'])->name('authors.index');

    /** Book Requests */
    Route::resource('book-requests', BookRequestAPIController::class);

    Route::put('change-password', [MemberAPIController::class, 'changePassword']);

    /** My Settings */
    Route::get('my-settings', [MemberSettingAPIController::class, 'index']);
    Route::post('update-settings', [MemberSettingAPIController::class, 'update']);
    // get e-books
    Route::get('e-books', [BookItemAPIController::class, 'getEBooks'])->name('e-books');  
    

    Route::get('get-member-transactions',[TransactionAPIController::class,'index']);
});

Route::middleware(['auth:sanctum', 'member.auth'])->group(function () {
    Route::post('create-membership-payment-session/{id}', [StripeApiController::class, 'createSession']);
    Route::get('membership-details', [MembershipPlanAPIController::class, 'details']);
});

Route::get('membership-plans', [MembershipPlanAPIController::class, 'index'])->name('membership-plans.index');


Route::post('register-member', [MemberAuthController::class, 'register'])->name('register-member');
Route::get('activate-member', [MemberAuthController::class, 'verifyAccount'])->name('activate-member');

/** Password Reset API's For Member */
Route::post('send-reset-member-password-link', [MemberAuthController::class, 'sendResetPasswordLink']);
Route::post('reset-member-password', [MemberAuthController::class, 'resetPassword'])
    ->name('reset-member-password.index');

Route::get('settings', [SettingAPIController::class, 'index'])->name('settings.index');
Route::get('all-settings', [\App\Http\Controllers\API\B1\SettingAPIController::class, 'index']);
