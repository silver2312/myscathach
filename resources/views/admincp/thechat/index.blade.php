@extends('layouts.app')

@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Danh sách thể chất') }}</div>

                <div class="card-body">
                    <a class="btn btn-primary" style="width:100%" href="{{url('thechat/create')}}">Thêm Thể Chất</a>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên Thể Chất</th>
                                <th scope="col">Tỷ lệ xuất hiện</th>
                                <th scope="col">Mô tả</th>
                                <th scope="col">Sửa</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($thechat as $key => $value)
                            <tr>
                                <th scope="row">{{$value->id}}</th>
                                <td>{{$value->name}}</td>
                                <td>{!!$value->percent!!}</td>
                                <td>{{$value->des}}</td>
                                <td><a class="btn btn-primary"href="{{route('thechat.edit',[$value->id])}}">Sửa</a></td>                                
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
