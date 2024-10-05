<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PlantController;
use App\Http\Controllers\PotController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\GardeningController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\TextusController;

Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register.form');
Route::post('/register', [RegisterController::class, 'register'])->name('register');
Route::get('/home', [PageController::class, 'home'])->name('home'); 

Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login');

Route::get('/', function () {
    return view('welcome');
});

Route::post('/logout', function () {
    Auth::logout();
    return redirect('/home');
})->name('logout');



//admin dashboard
Route::get('/admin', function () {
    return view('admin_dash'); 
});

//Admin-users
Route::prefix('admin')->group(function () {
    Route::get('/users', [UserController::class, 'index'])->name('admin.users.index');
    Route::get('/users/create', [UserController::class, 'create'])->name('admin.users.create');
    Route::post('/users', [UserController::class, 'store'])->name('admin.users.store');
    Route::get('/users/{user}/edit', [UserController::class, 'edit'])->name('admin.users.edit');
    Route::put('/users/{user}', [UserController::class, 'update'])->name('admin.users.update');
    Route::delete('/users/{user}', [UserController::class, 'destroy'])->name('admin.users.destroy');
});

// Plant routes
Route::prefix('admin')->group(function() {
    Route::get('/products', [PlantController::class, 'show'])->name('admin.products');
    Route::get('plants', [PlantController::class, 'index'])->name('admin.plants.index');
    Route::get('plants/create', [PlantController::class, 'create'])->name('admin.plants.create');
    Route::post('plants', [PlantController::class, 'store'])->name('admin.plants.store');
    Route::get('plants/{plant}/edit', [PlantController::class, 'edit'])->name('admin.plants.edit');
    Route::put('plants/{plant}', [PlantController::class, 'update'])->name('admin.plants.update');
    Route::delete('plants/{plant}', [PlantController::class, 'destroy'])->name('admin.plants.destroy');
    
    // Pot routes
    Route::get('pots', [PotController::class, 'index'])->name('admin.pots.index');
    Route::get('pots/create', [PotController::class, 'create'])->name('admin.pots.create');
    Route::post('pots', [PotController::class, 'store'])->name('admin.pots.store');
    Route::get('pots/{pot}/edit', [PotController::class, 'edit'])->name('admin.pots.edit');
    Route::put('pots/{pot}', [PotController::class, 'update'])->name('admin.pots.update');
    Route::delete('pots/{pot}', [PotController::class, 'destroy'])->name('admin.pots.destroy');
});

//for users

Route::get('/plants', [PlantController::class, 'showPlants'])->name('plants');
Route::get('/plants/{plant}', [PlantController::class, 'showDetail'])->name('plants.show');

Route::get('/pots', [PotController::class, 'showPots'])->name('pots');
Route::get('/pots/{pot}', [PotController::class, 'showDetail'])->name('pots.show');

//Add to cart

Route::get('/cart', [CartController::class, 'index'])->name('cart');
Route::post('/cart/add', [CartController::class, 'addToCart'])->name('cart.add');
Route::delete('/cart/remove/{id}', [CartController::class, 'removeFromCart'])->name('cart.remove');

//cart-admin routes
Route::get('carts', [CartController::class, 'view'])->name('admin.carts.index');
Route::delete('carts/{cart}', [CartController::class, 'destroy'])->name('admin.carts.destroy');

//make orders
Route::get('/order/{plant}', [OrderController::class, 'show'])->name('order.show');
Route::post('/order/process', [OrderController::class, 'processOrder'])->name('order.process');

Route::get('/payment/{order}', [PaymentController::class, 'show'])->name('payment.show');
Route::post('/payment/process', [PaymentController::class, 'process'])->name('payment.process');

Route::get('/my-orders', [OrderController::class, 'myOrders'])->name('my.orders');

//order-admin routes
Route::get('orders', [OrderController::class, 'view'])->name('admin.orders.index');
Route::delete('orders/{order}', [OrderController::class, 'destroy'])->name('admin.orders.destroy');

//Garden routes
Route::get('/gardening', [GardeningController::class, 'showForm'])->name('gardening.form');
Route::post('/gardening/apply', [GardeningController::class, 'apply'])->name('gardening.apply');

//Gardening-admin routes
Route::get('gardens', [GardeningController::class, 'view'])->name('admin.gardenings.index');
Route::delete('gardens/{garden}', [GardeningController::class, 'destroy'])->name('admin.gardens.destroy');

//Wishlist routes
Route::get('/wishlist', [WishlistController::class, 'showForm'])->name('wishlist.form');
Route::post('/wishlist/apply', [WishlistController::class, 'apply'])->name('wishlist.apply');

//Wishlist-admin routes
Route::get('wishlists', [WishlistController::class, 'index'])->name('admin.wishlists.index');
Route::delete('wishlists/{wishlist}', [WishlistController::class, 'destroy'])->name('admin.wishlists.destroy');

//Text us routes
Route::get('/textus', [TextusController::class, 'show'])->name('textus.show');
Route::post('/textus/send', [TextusController::class, 'send'])->name('textus.send');

//Text us-admin routes
Route::get('inquiries', [TextusController::class, 'view'])->name('admin.inquiries.index');
Route::delete('inquiries/{inquiry}', [TextusController::class, 'destroy'])->name('admin.inquiries.destroy');