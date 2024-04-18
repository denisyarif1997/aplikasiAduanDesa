<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use App\Http\Resources\PostResource;
use App\Http\Resources\TagResource;
use App\Http\Resources\AduanResource;
use App\Models\Post;
use App\Models\Tag;
use App\Models\Aduan;
use App\Services\FooterService;
use Inertia\Inertia;

class HomeController extends Controller
{
    public function home()
    {
        $categories = CategoryResource::collection(Category::latest()->take(4)->get());
        $posts = PostResource::collection(Post::latest()->take(4)->get());
        $tags = TagResource::collection(Tag::all());
        $dataTags = TagResource::collection(Tag::all());
        $aduans = AduanResource::collection(Aduan::latest()->take(4)->get());
        $footerData = FooterService::getFooterData();
        return Inertia::render('Home', compact('categories', 'posts', 'dataTags', 'tags', 'aduans','footerData'));
    }
}

// Berikut adalah penjelasan untuk setiap metode dalam controller tersebut:

// home() - Menampilkan Halaman Utama:
// Metode: GET
// Aksi Controller: home pada HomeController
// Deskripsi: Metode ini digunakan untuk menampilkan halaman utama (home) dari aplikasi.
// Mengambil koleksi terbaru (latest) dari kategori (Category), post (Post), dan aduan (Aduan) sebanyak 4 item menggunakan Eloquent.
// Menggunakan resource (CategoryResource, PostResource, dan AduanResource) untuk membentuk sumber daya yang akan digunakan dalam tampilan.
// Mengambil semua tag (Tag) dan dua koleksi tag sebagai data tambahan.
// Mengambil data footer menggunakan layanan (service) FooterService.
// Mengirimkan data kategori, post, tag, aduan, dan data tambahan ke tampilan menggunakan Inertia