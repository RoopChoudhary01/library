<?php

use App\Http\Controllers\API\B1\BookItemAPIController;
use App\Http\Controllers\API\M1\AuthAPIController;
use App\Http\Controllers\API\M1\BookRequestAPIController;
use App\Http\Controllers\API\M1\CountryAPIController;
use App\Http\Controllers\API\M1\IssuedBookAPIController;
use App\Http\Controllers\API\M1\MemberAPIController;
use App\Http\Controllers\API\M1\MemberAuthController;
use Illuminate\Support\Facades\Route;

/**
 * Member Auth Middleware
 */
Route::middleware(['auth:sanctum', 'member.auth', 'subscription'])->group(function () {
    // Book search
    Route::get('search-books', [BookItemAPIController::class, 'searchBooks'])->name('search-books.index');
    // get logged in member details
    Route::get('member-details', [MemberAPIController::class, 'getLoggedInMemberDetails'])->name('member-details');
    // update logged in member profile
    Route::post('update-member-profile', [MemberAPIController::class, 'updateMemberProfile'])
        ->name('update-member-profile');
    // books history
    Route::get('books-history', [IssuedBookAPIController::class, 'booksHistory'])->name('books-history.index');
    // Book history Details
    Route::get('books/{book_item}/book-history', [IssuedBookAPIController::class, 'booksHistoryDetail'])
        ->name('book-history');
    // Reserve Book
    Route::post('books/{book_item}/reserve-book', [IssuedBookAPIController::class, 'reserveBook'])
        ->name('reserve-book');
    // Un-Reserve Book
    Route::post('books/{book_item}/un-reserve-book', [IssuedBookAPIController::class, 'unReserveBook'])
        ->name('un-reserve-book');
    // Book Requests

    Route::resource('book-requests', BookRequestAPIController::class);

    Route::get('countries', [CountryAPIController::class, 'index'])->name('countries.index');
    // Change Password
    Route::put('change-password', [MemberAPIController::class, 'changePassword']);
});
Route::post('logout', [MemberAuthController::class, 'logout']);

Route::post('member-login', [AuthAPIController::class, 'memberLogin']);
Route::post('register-member', [MemberAuthController::class, 'register'])->name('register-member');

/** Password Reset API's For Member */
Route::post('send-reset-member-password-link', [MemberAuthController::class, 'sendResetPasswordLink']);
Route::post('reset-member-password', [MemberAuthController::class, 'resetPassword'])
    ->name('reset-member-password.index');
