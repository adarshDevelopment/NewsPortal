<?php

use App\Http\Controllers\NewsController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});


Route::post('/news', function(){
    return 'in here';
})->name('news.store');

Route::get('/news', [NewsController::class, 'index'])->name('news.index');
Route::post('/news/create', [NewsController::class, 'store'])->name('news.store');
Route::get('/news/create', [NewsController::class, 'create'])->name('news.create');
// Route::get('/news/edit/{id}', [NewsController::class, 'edit'])->name('news.edit');
// Route::put('/news/edit/{id}', [NewsController::class, 'update'])->name('news.update');

// Route::delete('/news/{id}', [NewsController::class, 'destroy'])->name('news.delete');

require __DIR__ . '/auth.php';
