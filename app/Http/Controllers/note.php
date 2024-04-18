
Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});
Route::middleware(['auth', 'role:admin|moderator'])->prefix('/dashboard')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('admin.index');
    Route::resource('/aduan', AduanController::class);
    Route::post('/aduan/{id}/store-status', [AduanController::class, 'updateStatus'])->name('aduan.store_status');
});

require __DIR__ . '/auth.php';