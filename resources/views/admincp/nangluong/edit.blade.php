@extends('layouts.app')
@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sửa năng lượng') }}</div>
                <div class="card-body">
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
                    <form  method="POST" action="{{route('nangluong.update',[$energy->id])}}">
						        @method('PUT')
                        @csrf
                        <div class="form-group">
                          <label>Tên năng lượng</label>
                          <input type="text" class="form-control" name="name" value="{{$energy->name}}">
                        </div>						
                        <div class="form-group">
                            <label>Mô tả</label>
                            <textarea name="des" class="form-control" cols="30" rows="10">{{$energy->des}}</textarea>
                        </div>
                        <button type="submit" name="suanangluong" class="btn btn-primary">Sửa</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
