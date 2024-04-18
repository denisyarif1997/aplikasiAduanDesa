<?php

namespace App\Http\Controllers\Dashboard;
use App\Http\Controllers\Controller;
use Inertia\Response;
use Inertia\Inertia;
use App\Models\Aduan;
use App\Models\User;
use App\Models\Post;

class DashboardController extends Controller
{
    //
    public function index(): Response
    {
        $totalAduan =  Aduan::count();
        $totalUser = User::count();
        $totalPost = Post::count();
        $aduanByDesa = Aduan::groupBy('desa_Kelurahan')
        ->select('desa_kelurahan', \DB::raw('count (*) as count'))
        ->pluck('count', 'desa_kelurahan');

        $backgroundColorDesa = [
            '#eff0f2',
            '#228763',
            '#ffe0e6',
            '#cdebff',
            '#e248be',
            '#fff3d6'
        ];

        $chartData = [
            'labels' => $aduanByDesa->keys()->all(),
            'datasets' => [
                [
                    'label' => 'Total',
                    'barThickness' => 40,
                    'backgroundColor' => $backgroundColorDesa,
                    'data' => $aduanByDesa->values()->all(),
                ],
            ],
        ];

        $aduanByKecamatan = Aduan::groupBy('kecamatan')
        ->select('kecamatan', \DB::raw('count(*) as count'))
        ->pluck('count', 'kecamatan');

        $backgroundColorKecamatan = [
            '#eff0f2',
            '#228763',
            '#ffe0e6',
            '#cdebff',
            '#e248be',
            '#fff3d6'
        ];

        $charDataKecamatan = [
            'labels' => $aduanByKecamatan->keys()->all(),
            'datasets' => [
                [
                    'label' => 'Total',
                    'barThickness' => 40,
                    'backgroundColor' => $backgroundColorKecamatan,
                    'data' => $aduanByKecamatan->values()->all(),
                ],
            ],
        ];

        return Inertia::render('Admin/AdminIndex', [
            'charData' => $chartData,
            'chartDataKecamtan' => $charDataKecamatan,
            'totalDataAduan' => $totalAduan,
            'totalDataUser' => $totalUser,
            'totalDataPost' => $totalPost
        ]);
    }

}
