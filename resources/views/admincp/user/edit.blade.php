@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sửa Người dùng') }}</div>
                <div class="card-body">
                    <a class="btn btn-success col-md-2" href="{{url('QL-User/')}}" role="button">Trở về</a>
                    <br>
					<br>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form  method="POST" action="{{route('QL-User.update',[$user->id])}}">
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                          <label>ID:&nbsp;&nbsp;&nbsp;</label>
                          <input class="form-control" type="text" value="{{$user->id}}" name="id">
                      </div>
                        <div class="form-group">
                            <label>Tên:&nbsp;&nbsp;&nbsp;</label>
                            <input class="form-control" type="text" value="{{$user->name}}" name="name">
                        </div>
                        <div class="form-group">
                            <label>Link ảnh truyện</label>
                            <img src="{{$user->u_img}}" class="rounded mx-auto d-block" style="width:150px;height:250px;align:center;">
                            <br>
                            <input type="text" value="{{$user->u_img}}" class="form-control" name="u_img">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" value="{{$user->email}}" class="form-control" name="email">                       
                        </div>
                        <div class="form-group">
                            <label>Quyền</label>
                            <select name="level" class="form-control">
                              @if ($user->level == 0)
                                <option value="0" selected>Admin</option>
                              @elseif($user->level == 1)  
                                <option value="1" selected>Mod</option>
                                <option value="2">Vip</option>
                                <option value="5">Thường</option>
                              @elseif($user->level == 2)
                                <option value="2" selected>Vip</option>
                                <option value="1">Mod</option>
                                <option value="5">Thường</option>
                              @else
                                <option value="5" selected>Thường</option>
                                <option value="1">Mod</option>
                                <option value="2">Vip</option>
                              @endif
                            </select>
                        </div>
                        <button type="submit" name="suauser" class="btn btn-primary">Sửa</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
