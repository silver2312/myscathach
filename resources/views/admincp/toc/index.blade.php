@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @php
            $count = count($race);
        @endphp
        @if($count==0 )
            <a class="btn btn-danger" href="{{url('truyen/create')}}">Thêm tộc</a>
        @else
        <div class="col-md-auto">
            <div class="card">
                <div class="card-header">{{ __('Danh sách tộc') }}</div>
                <a class="btn btn-danger col-md-2" href="{{url('toc/create')}}">Thêm Tộc</a>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Tên tộc</th>
                                    <th scope="col">Tỷ lệ xuất hiện</th>
                                    <th scope="col">Năng lượng</th>
                                    <th scope="col">Thể chất</th>
                                    <th scope="col">Giới thiệu</th>
                                    <th scope="col">Sửa</th>                                    
                                </tr>
                            </thead>
                            <tbody>                                
                                @foreach($race as $key => $value)
                                <tr>
                                    <td>{{$value->name}}</td>
                                    <td>{{$value->percent}}</td>
                                    <td>
                                        @foreach($value->nhieu_ene as $val) 
                                            <span class="badge badge-dark">{{$val->name}}</span>
                                        @endforeach
                                    </td>
                                    <td>
                                        @foreach($value->nhieu_thechat as $valu) 
                                            <span class="badge badge-dark">{{$valu->name}}</span>
                                        @endforeach
                                    </td>
                                    <td>{!!$value->des!!}</td>
                                    <td><a href="{{route('toc.edit',[$value->id])}}" class="btn btn-primary">Sửa</a></td>                                    
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    {{$race->onEachSide(1)->links('pagination::bootstrap-4')}}
                </div>
            </div>
        </div>
    </div>
</div>
@endif
@endsection
