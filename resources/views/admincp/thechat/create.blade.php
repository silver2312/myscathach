@extends('layouts.app')
@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-8 col-lg-8">
            <div class="card">
                <div class="card-header">{{ __('Thêm thể chất') }}</div>
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
                    <form  method="POST" action="{{route('thechat.store')}}">
                        @csrf
                        <div class="form-group">
                          <label>Tên</label>
                          <input type="text" value="{{old('name')}}" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label>Tỷ kệ xuất hiện</label>
                            <input type="text" value="{{old('percent')}}" class="form-control" name="percent">
                          </div>
                        <div class="form-group">
                            <label>Mô tả</label>
                            <textarea name="des" class="form-control" cols="30" rows="10">{{old('des')}}</textarea>
                        </div>
                        <button type="submit" name="themthechat" class="btn btn-primary">Thêm</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
