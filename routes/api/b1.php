<?php

use App\Http\Controllers\API\B1\AboutUsCardAPIController;
use App\Http\Controllers\API\B1\AccountAPIController;
use App\Http\Controllers\API\B1\AuthAPIController;
use App\Http\Controllers\API\B1\AuthorAPIController;
use App\Http\Controllers\API\B1\BookAPIController;
use App\Http\Controllers\API\B1\BookItemAPIController;
use App\Http\Controllers\API\B1\BookLanguageAPIController;
use App\Http\Controllers\API\B1\BookRequestAPIController;
use App\Http\Controllers\API\B1\BookSeriesAPIController;
use App\Http\Controllers\API\B1\CommonAPIController;
use App\Http\Controllers\API\B1\CountryAPIController;
use App\Http\Controllers\API\B1\DashboardAPIController;
use App\Http\Controllers\API\B1\GenreAPIController;
use App\Http\Controllers\API\B1\HomepageSettingAPIController;
use App\Http\Controllers\API\B1\IssuedBookAPIController;
use App\Http\Controllers\API\B1\MemberAPIController;
use App\Http\Controllers\API\B1\MembershipPlanAPIController;
use App\Http\Controllers\API\B1\PenaltyAPIController;
use App\Http\Controllers\API\B1\PermissionAPIController;
use App\Http\Controllers\API\B1\PublisherAPIController;
use App\Http\Controllers\API\B1\RoleAPIController;
use App\Http\Controllers\API\B1\SeriesBookAPIController;
use App\Http\Controllers\API\B1\SettingAPIController;
use App\Http\Controllers\API\B1\SubscriptionAPIController;
use App\Http\Controllers\API\B1\TagAPIController;
use App\Http\Controllers\API\B1\TestimonialAPIController;
use App\Http\Controllers\API\B1\TransactionAPIController;
use App\Http\Controllers\API\B1\UserAPIController;
use Illuminate\Support\Facades\Route;

/**
 * user Auth Middleware
 */
Route::middleware(['auth:sanctum', 'user.auth'])->group(function () {
    // Genre Routes
    Route::middleware('permission:manage_genres')->group(function () {
        Route::resource('genres', GenreAPIController::class);
        Route::post('genres/{genre}/update-genres-flag', [GenreAPIController::class, 'updateGenresFlag'])
            ->name('genres.update-genres-flag');
    });

    // Author Routes
    Route::middleware('permission:manage_authors')->group(function () {
        Route::resource('authors', AuthorAPIController::class);
    });

    // Publishers Routes
    Route::middleware('permission:manage_publishers')->group(function () {
        Route::resource('publishers', PublisherAPIController::class);
    });

    // Tags Routes
    Route::middleware('permission:manage_tags')->group(function () {
        Route::resource('tags', TagAPIController::class);
    });

    // Book Language Routes
    Route::middleware('permission:manage_book_languages')->group(function () {
        Route::resource('book-languages', BookLanguageAPIController::class);
    });

    Route::middleware('permission:manage_roles')->group(function () {
        // Roles
        Route::resource('roles', RoleAPIController::class);
        Route::post('roles/{role}', [RoleAPIController::class, 'update']);

        // Permissions
        Route::resource('permissions', PermissionAPIController::class);
    });

    // Book API Routes
    Route::middleware('permission:manage_books')->group(function () {
        Route::resource('books', BookAPIController::class);
        Route::post('books/{book}', [BookAPIController::class, 'update']);
        Route::post('books/{book}/remove-image', [BookAPIController::class, 'removeImage']);
        Route::post('books/{book}/update-books-flag', [BookAPIController::class, 'updateBookFlag'])
            ->name('books.update-books-flag');

        // add book items
        Route::post('books/{book}/items', [BookAPIController::class, 'addItem'])->name('books.add-items');
        Route::delete('book-items/{book_item}', [BookItemAPIController::class, 'destroy']);
        // Get available books
        Route::get('books/{book}/available-books', [BookItemAPIController::class, 'availableBooks'])
            ->name('books.available-books');

        // Update book status
        Route::put('books/{book_item}/update-book-status', [BookItemAPIController::class, 'updateBookStatus'])
            ->name('books.update-book-status');

        // import/export books
        Route::get('books-export', [BookAPIController::class, 'exportBooks']);
        Route::post('books-import', [BookAPIController::class, 'importBooks']);
    });
    // Get book details from third-party api
    Route::get('get-book-details', [BookAPIController::class, 'getBookDetails']);

    // Book search
    Route::get('search-books', [BookItemAPIController::class, 'searchBooks'])->name('books.search-books');

    // get e-books
    Route::get('e-books', [BookAPIController::class, 'getEBooks'])->name('e-books');

    // Users
    Route::middleware('permission:manage_users')->group(function () {
        Route::resource('users', UserAPIController::class);
        Route::post('users/{user}', [UserAPIController::class, 'update']);
        Route::post('users/{user}/remove-image', [UserAPIController::class, 'removeImage'])
            ->name('users.remove-image');
        Route::get('users/{user}/update-status', [UserAPIController::class, 'updateStatus'])
            ->name('users.update-status');
    });

    // get logged in user details
    Route::get('user-details', [UserAPIController::class, 'getLoggedInUserDetails'])->name('users.user-details');

    // update logged in user profile
    Route::post('update-user-profile', [UserAPIController::class, 'updateUserProfile'])
        ->name('users.update-user-profile');

    // Members
    Route::middleware('permission:manage_members')->group(function () {
        Route::delete('members/{member}', [MemberAPIController::class, 'destroy'])->name('members.destroy');
    });
    Route::resource('members', MemberAPIController::class)->except(['destroy']);
    Route::post('members/{member}', [MemberAPIController::class, 'update']);

    Route::get('members/{member}/update-status', [MemberAPIController::class, 'updateStatus'])
        ->name('members.update-status');
    Route::post('members/{member}/remove-image', [MemberAPIController::class, 'removeImage'])
        ->name('members.remove-image');

    //send re-activation mail
    Route::post('members/{member}/re-activation', [MemberAPIController::class, 'sendReActivationMail']);

    Route::middleware('permission:manage_book_series')->group(function () {
        // book series routes
        Route::resource('book-series', BookSeriesAPIController::class);
        Route::post('book-series/{book_series}', [BookSeriesAPIController::class, 'update']);

        // series book routes
        Route::resource('series-books', SeriesBookAPIController::class);
        Route::post('series-books/{series_book}', [SeriesBookAPIController::class, 'update']);
    });

    Route::middleware('permission:manage_finance')->group(function () {
        // Membership Plans
        Route::resource('membership-plans', MembershipPlanAPIController::class);
    });
    Route::get('membership-plans', [MembershipPlanAPIController::class, 'index'])->name('membership-plans.index');

    // Reserve Book
    Route::post('books/{book_item}/reserve-book', [IssuedBookAPIController::class, 'reserveBook'])
        ->name('reserve-book');
    // Un-Reserve Book
    Route::post('books/{book_item}/un-reserve-book', [IssuedBookAPIController::class, 'unReserveBook'])
        ->name('un-reserve-book');

    // Update issued book status
    Route::put('books/{book_item}/update-issued-book-status', [IssuedBookAPIController::class, 'updateIssuedBookStatus'])
        ->name('update-issued-book-status');

    // books history
    Route::get('members/{member}/books-history',
        [IssuedBookAPIController::class, 'memberBooksHistory'])->name('members.book-history');

    Route::middleware('permission:issue_books')->group(function () {
        // Issue Book
        Route::post('books/{book_item}/issue-book', [IssuedBookAPIController::class, 'issueBook'])
            ->name('issue-book');
        // Return Book
        Route::post('books/{book_item}/return-book', [IssuedBookAPIController::class, 'returnBook'])
            ->name('return-book');

        // get books history for admin users
        Route::get('books-history', [IssuedBookAPIController::class, 'index'])->name('books-history');
        Route::get('issued-books/{issued_book}', [IssuedBookAPIController::class, 'show'])->name('issued-book.show');
        Route::delete('books-history/{id}', [IssuedBookAPIController::class, 'destroy']);

        Route::get('export-books-circulation', [IssuedBookAPIController::class, 'exportBooks']);
        
        Route::get('get-subscriptions',[SubscriptionAPIController::class,'index']);
        Route::post('subscriptions/{id}',[SubscriptionAPIController::class,'update']);
        Route::get('get-transactions',[TransactionAPIController::class,'index']);
    });

    /** Get App Config */
    Route::get('config', [AuthAPIController::class, 'getAppConfig'])->name('config');

    Route::middleware('permission:manage_settings')->group(function () {
        // Settings
        Route::resource('settings', SettingAPIController::class);
        Route::post('settings/{setting}', [SettingAPIController::class, 'update']);
        // Upload library logo
        Route::post('upload-logo', [SettingAPIController::class, 'uploadLogo'])->name('upload-logo');
        Route::post('upload-favicon', [SettingAPIController::class, 'uploadFaviconIcon'])->name('upload-favicon');

        /** Homepage settings */
        Route::get('homepage-settings', [HomepageSettingAPIController::class, 'index'])->name('homepage-settings.index');
        Route::put('homepage-settings', [HomepageSettingAPIController::class, 'bulkUpdate'])->name('homepage-settings.update');

        // Manage Testimonials
        Route::resource('testimonials', TestimonialAPIController::class);
        Route::post('testimonials/{testimonial}', [TestimonialAPIController::class, 'update'])->name('testimonials.update');
    });

    Route::middleware('permission:manage_book_requests')->group(function () {
        Route::get('book-requests', [BookRequestAPIController::class, 'index'])
            ->name('book-requests.index');

        Route::put('book-requests/{book_request}/status/{status}', [BookRequestAPIController::class, 'updateStatus'])
            ->name('book-requests.update-status');
    });

    // Countries
    Route::get('countries', [CountryAPIController::class, 'index'])->name('countries.index');

    // Currencies
    Route::get('currencies', [CommonAPIController::class, 'currencies'])->name('currencies');
    Route::get('dashboard-details', [DashboardAPIController::class, 'dashboardDetails'])->name('dashboard-details');

    /** Members issued/reserved books count */
    Route::get('members/{member}/status/{status}', [MemberAPIController::class, 'isAllowToReserveOrIssueBook'])
        ->name('members.check-books-limit');

    /** Penalties */
    Route::middleware('permission:manage_penalties')->group(function () {
        Route::get('penalties', [PenaltyAPIController::class, 'index']);
    });
    Route::get('books/{book_item_id}/is-due', [PenaltyAPIController::class, 'checkIsBookItemDue']);

    Route::put('change-password', [UserAPIController::class, 'changePassword']);

    Route::post('book-history/{issued_book_id}/send-book-due-mail', [PenaltyAPIController::class, 'sendBookDueMail']);

    Route::resource('about-us-cards', AboutUsCardAPIController::class);
    Route::post('about-us-cards/{about_us_card}/update-status', [AboutUsCardAPIController::class, 'updateStatus'])
        ->name('about-us-cards.update-status');
});

Route::get('activate-user', [AuthAPIController::class, 'verifyAccount'])->name('activate-user');

/** Password Reset API's For User */
Route::post('send-reset-password-link', [AccountAPIController::class, 'sendResetPasswordLink']);
Route::post('reset-password', [AccountAPIController::class, 'resetPassword'])->name('reset-password');
Route::get('settings', [SettingAPIController::class, 'index'])->name('settings.index');
