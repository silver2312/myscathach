@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Danh sách chương của Truyện: <strong style="font-size: x-large"><a style="text-decoration:none;" href="{{url('xemtruyen/'.$cha->id)}}">{{$cha->bk_name}}</a></strong></div>
				<div class="card-body">
					<a class="btn btn-success col-md-2" href="{{route('chapter.show',[$cha->id])}}" role="button">Thêm chương mới</a>
                    <br>
					<br>
					@if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">STT</th>
								<th scope="col">Tiêu đề</th>
                                <th scope="col">Hiển thị</th>
                                <th scope="col">Lượt xem</th>
                                <th scope="col">Ngày đăng</th>
                                <th scope="col">Ngày cập nhật</th>
                                <th scope="col">Sửa</th>
                                <th scope="col">Xoá</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($cha->chapter as $key => $bok)
                            <tr>
                                <th scope="row">{{$bok->position}}</th>
                                <td>{{$bok->header}}</td>
                                <td>
									@if($bok->active == 0)
										Đã đăng
									@else
										Chưa đăng
									@endif
								</td>
                                <td>{{$bok->views}}</td>
                                <td>{{$bok->crea_at}}</td>
                                <td>{{$bok->upd_at}}</td>
                                <td><a href="{{route('chapter.edit',[$bok->id])}}" class="btn btn-primary">Sửa</a></td>
                                @if(Auth::user()->level ==0)
                                    <td>
                                        <form action="{{route('chapter.destroy',[$bok->id])}}" method="POST">
                                        @method('DELETE')
                                        @csrf
                                        <button class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xoá không?')">Xoá</button>
                                        </form>
                                    </td>
                                @endif
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
