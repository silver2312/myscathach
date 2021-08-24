@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-auto">
            <div class="card">
                <div class="card-header">{{ __('Danh sách Người dùng') }}</div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                  <th scope="col">ID</th>
                                    <th scope="col">Tên người dùng</th>
                                    <th scope="col">Ảnh</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Quyền</th>
                                    @if(Auth::user()->level ==0)                           
                                      <th scope="col">Sửa</th>  
                                      <th scope="col">Xoá</th>
                                    @endif
                                </tr>
                            </thead>
                            <tbody>  
                            @foreach ($user as $key => $value)                                
                              <tr>
                                <td>{{$value->id}}</td>
                                <td><a href="{{url('trang-ca-nhan/'.$value->id)}}" style="text-decoration:none;">{{$value->name}}</a></td>
                                <td><img src="{{$value->u_img}}" width="80" height="80"alt="{{$value->name}}"></td>
                                <td>{{$value->email}}</td>
                                <td>
                                  @if ($value->level == 0)
                                    Admin
                                  @elseif($value->level == 1)  
                                    Mod
                                  @elseif($value->level == 2)
                                    Vip
                                  @else
                                    Bình thường
                                  @endif
                                </td>
                                <td><a href="{{route('QL-User.edit',[$value->id])}}" class="btn btn-primary">Sửa</a></td>
                                <td>
                                  <form action="{{route('QL-User.destroy',[$value->id])}}" method="POST">
                                    @method('DELETE')
                                    @csrf
                                    <button class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xoá không?')">Xoá</button>
                                  </form>
                                </td>
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
