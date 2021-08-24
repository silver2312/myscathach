@extends('layouts.app')

@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Danh sách thể loại') }}</div>

                <div class="card-body">
                    <a class="btn btn-primary" style="width:100%" href="{{url('danhmuc/create')}}">Thêm Thể Loại</a>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên thể loại</th>
                                <th scope="col">Mô tả</th>
                                <th scope="col">Sửa</th>
                                <th scope="col">Xoá</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($cate as $key => $ct)
                            <tr>
                                <th scope="row">{{$ct->id}}</th>
                                <td>{{$ct->cate_name}}</td>
                                <td>{{$ct->cate_des}}</td>
                                <td><a class="btn btn-primary"href="{{route('danhmuc.edit',[$ct->id])}}">Sửa</a></td>
                                <td>
                                    <form action="{{route('danhmuc.destroy',[$ct->id])}}" method="POST">
                                    @method('DELETE')
                                    @csrf
                                    <button class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xoá không?')">Xoá</button>
                                    </form>
                                </td>
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
