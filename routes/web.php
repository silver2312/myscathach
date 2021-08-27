<?php      
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DanhmucController;
use App\Http\Controllers\TruyenController;
use App\Http\Controllers\ChapterController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use App\Models\DanhmucTruyen;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [IndexController::class , 'home']);

Route::get('/the-loai/{cate_slug}', [IndexController::class , 'danhmuc']);

Route::get('/xemtruyen/{id}', [IndexController::class , 'xemtruyen']);

Route::get('/doctruyen/{truyen_id}/{position}', [IndexController::class , 'doctruyen']);

Route::get('/timkiem', [IndexController::class , 'timkiem']);
Route::post('/timkiem-ajax', [IndexController::class , 'timkiem_ajax']);

Route::get('/themtutruyen/{bid}', [IndexController::class , 'themtutruyen']);
Route::get('/tutruyen', [IndexController::class , 'tutruyen']);
Route::get('/xoatu/{bid}', [IndexController::class , 'xoatu']);

Route::post('/cmt/{bid}', [IndexController::class , 'cmt']);
Route::post('/rep/{cmid}', [IndexController::class , 'rep']);

Route::get('/like/{bid}', [IndexController::class , 'like']);

Route::get('/trang-ca-nhan/{uid}', [IndexController::class , 'user']);
Route::post('/ucmt', [IndexController::class , 'ucmt']);
Route::post('/cpwd', [IndexController::class , 'change_pwd']);
Route::post('/profile', [IndexController::class , 'profile']);

Route::get('/cap-nhat', [IndexController::class , 'post']);

Route::get('/surf', function () {
  if(Auth::user()){    
    $cate = DanhmucTruyen::orderBy('id','ASC')->get();
    return view('pages.surf')->with(compact('cate'));
  }else{
    return redirect()->route('register');
  }
});
Route::post('/nhung',[IndexController::class , 'nhung']);

Route::get('/res-chap/{bid}',[IndexController::class , 'res_chap']);


Auth::routes();
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::resource('/danhmuc', DanhmucController::class);
Route::resource('/truyen', TruyenController::class);
Route::resource('/chapter', ChapterController::class);
Route::resource('/QL-User', UserController::class);

