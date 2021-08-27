@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @php
            $count = count($bk);
        @endphp
        @if($count==0 )
            <a class="btn btn-danger" href="{{url('truyen/create')}}">Thêm truyện</a>
        @else
        <div class="col-md-auto">
            <div class="card">
                <div class="card-header">{{ __('Danh sách truyện') }}</div>
                <a class="btn btn-danger col-md-2" href="{{url('truyen/create')}}">Thêm truyện</a>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Tên Truyện</th>
                                    <th scope="col">Hình ảnh</th>
                                    <th scope="col">Người đăng</th>
                                    <th scope="col">Tác giả</th>
                                    <th scope="col">Danh mục</th>
                                    <th scope="col">Views</th>
                                    <th scope="col">Vip</th>
                                    <th scope="col">Hoàn thành</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col">Danh sách chương</th>
                                    <th scope="col">Sửa</th>
                                    @if(Auth::user()->level ==0)
                                        <th scope="col">Xoá</th>
                                    @endif
                                </tr>
                            </thead>
                            <tbody>                                
                                @foreach($bk as $key => $bok)
                                <tr>
                                    <td><a href="{{url('xemtruyen/'.$bok->id)}}">{{$bok->bk_name}}</a></td>
                                    <td><img src="{{$bok->bk_img}}" class="rounded mx-auto d-block" style="width:54px;height:96px;"></td>
                                    <td>{{$bok->userW->name}}</td>
                                    <td>{{$bok->author}}</td>
                                    <td>
                                        @foreach($bok->thuocnhieudanhmuctruyen as $thuocdanh) 
                                            <span class="badge badge-dark">{{$thuocdanh->cate_name}}</span>
                                        @endforeach
                                    </td>
                                    <td>{{$bok->views}}</td>
                                    <td>@if($bok->vip==0)
                                        Truyện chưa được đề cử
                                    @else
                                        Truyện đang được để cử
                                    @endif</td>
                                    <td>@if($bok->complete!=0)
                                        Hoàn thành
                                    @else
                                        Chưa hoàn thành
                                    @endif</td>
                                    <td>
                                        @if($bok->bk_at==0)
                                            Đăng
                                        @else
                                            Không Đăng
                                        @endif
                                    </td>
                                    <td><a href="{{route('truyen.show',[$bok->id])}}" class="btn btn-primary">Click</a></td>
                                    <td><a href="{{route('truyen.edit',[$bok->id])}}" class="btn btn-primary">Sửa</a></td>
                                    @if(Auth::user()->level ==0)
                                        <td>
                                            <form action="{{route('truyen.destroy',[$bok->id])}}" method="POST">
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
@endif
@endsection
