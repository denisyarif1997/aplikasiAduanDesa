<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Request as Requests;
use App\Http\Resources\PermissionResource;
use App\Http\Requests\StorePermissionRequest;
use Inertia\Response;
use Inertia\Inertia;


class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): Response
    {

        $perPage = request('perPage') ?: 5;

        $permissions = Permission::query()
            ->when(request('search'), function($query, $search){
                $query->where('name', 'like', "%{$search}%");
            })
            ->paginate($perPage)
            ->appends(request()->query());

        $permissions = PermissionResource::collection($permissions);

        $filters = request()->only(['search', 'perPage']);

        return Inertia::render('Admin/Permissions/PermissionIndex', compact('permissions', 'filters'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        return Inertia::render('Admin/Permissions/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePermissionRequest $request)
    {
        Permission::create($request->validated());
        return to_route('permissions.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $permission = Permission::findById($id);

        return Inertia::render('Admin/Permissions/Edit', [
            'permission' => new PermissionResource($permission)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StorePermissionRequest $request, string $id)
    {
        $permission = Permission::findById($id);
        $permission->update($request->validated());
        return to_route('permissions.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $permission = Permission::findById($id);
        $permission->delete();
        return back();
    }
}


// Berikut adalah penjelasan untuk setiap metode dalam controller tersebut:

// index() - Menampilkan Daftar Permission:
// Metode: GET
// Aksi Controller: index pada PermissionController
// Deskripsi: Metode ini digunakan untuk menampilkan daftar permission (izin) pada halaman admin.
// Menggunakan Eloquent untuk mengambil data permission dari database.
// Menerapkan fitur pencarian dan membatasi jumlah permission per halaman.
// Menggunakan PermissionResource untuk membentuk sumber daya yang akan digunakan dalam tampilan.
// Mengirimkan data permission dan filter ke tampilan menggunakan Inertia.
// create() - Menampilkan Form Pembuatan Permission Baru:
// Metode: GET
// Aksi Controller: create pada PermissionController
// Deskripsi: Menampilkan form untuk membuat permission baru.
// store($request) - Menyimpan Permission Baru:
// Metode: POST
// Aksi Controller: store pada PermissionController
// Deskripsi: Metode ini digunakan untuk menyimpan data permission baru ke database.
// Menggunakan StorePermissionRequest untuk melakukan validasi request.
// Membuat permission baru dengan menggunakan data yang telah divalidasi.
// Mengalihkan pengguna ke halaman daftar permission setelah berhasil menyimpan.
// edit($id) - Menampilkan Form Edit Permission:
// Metode: GET
// Aksi Controller: edit pada PermissionController
// Deskripsi: Menampilkan form untuk mengedit permission tertentu.
// Menggunakan PermissionResource untuk membentuk sumber daya yang akan digunakan dalam tampilan.
// update($request, $id) - Memperbarui Permission:
// Metode: PUT atau PATCH
// Aksi Controller: update pada PermissionController
// Deskripsi: Metode ini digunakan untuk memperbarui data permission tertentu dalam database.
// Menggunakan StorePermissionRequest untuk melakukan validasi request.
// Menggunakan findById untuk menemukan permission berdasarkan ID yang dikirim.
// Jika permission ditemukan, memperbarui permission dengan data yang baru.
// Mengalihkan pengguna ke halaman daftar permission setelah berhasil memperbarui.
// destroy($id) - Menghapus Permission:
// Metode: DELETE
// Aksi Controller: destroy pada PermissionController
// Deskripsi: Metode ini digunakan untuk menghapus permission tertentu dari database.
// Menggunakan findById untuk menemukan permission berdasarkan ID yang dikirim.
// Jika permission ditemukan, menghapus permission dari database.
// Mengalihkan pengguna ke halaman sebelumnya setelah berhasil menghapus.