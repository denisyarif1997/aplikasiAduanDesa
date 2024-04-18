<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use Inertia\Response;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): Response
    {
        return Inertia::render('Auth/Login', [
            'canResetPassword' => Route::has('password.request'),
            'status' => session('status'),
        ]);
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        $user = Auth::user();

        if ($user && ($user->hasRole('admin') || $user->hasRole('moderator'))) {
            return redirect(RouteServiceProvider::HOME);
        }

        return redirect(RouteServiceProvider::HOMEUSER);

    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}

// Penjelasan:

// LoginRequest: Fungsi ini mengambil parameter LoginRequest, yang merupakan instance dari form request yang digunakan untuk memvalidasi input pada saat login. Pemilihan LoginRequest sebagai parameter menunjukkan bahwa fungsi ini diharapkan menerima data input yang valid sesuai dengan aturan validasi yang didefinisikan dalam LoginRequest.
// authenticate(): Metode ini dipanggil pada objek $request untuk mengotentikasi pengguna berdasarkan informasi yang dikirimkan melalui formulir login. Ini adalah bagian dari proses otentikasi bawaan Laravel.
// session()->regenerate(): Ini menghasilkan ID sesi yang baru dan memastikan sesi yang aman setelah pengguna berhasil login. Ini adalah tindakan keamanan untuk melindungi dari serangan CSRF (Cross-Site Request Forgery).
// Auth::user(): Mengambil objek pengguna yang saat ini diotentikasi dari sistem otentikasi Laravel.
// hasRole(): Sebuah metode yang digunakan untuk memeriksa apakah pengguna memiliki peran tertentu. Dalam hal ini, kita memeriksa apakah pengguna memiliki peran 'admin' atau 'moderator'.
// Redirect ke HOME atau HOMEUSER: Jika pengguna memiliki peran 'admin' atau 'moderator', mereka diarahkan ke RouteServiceProvider::HOME. Jika tidak, mereka diarahkan ke RouteServiceProvider::HOMEUSER. Ini mengimplementasikan logika bahwa hanya admin atau moderator yang diizinkan mengakses HOME, sedangkan pengguna dengan peran lain diarahkan ke HOMEUSER.