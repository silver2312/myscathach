@extends('layouts.app')
@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sửa thể chất') }}</div>
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
                    <form  method="POST" action="{{route('thechat.update',[$thechat->id])}}">
						        @method('PUT')
                        @csrf
                        <div class="form-group">
                          <label>Tên năng lượng</label>
                          <input type="text" class="form-control" name="name" value="{{$thechat->name}}">
                        </div>	
                        <div class="form-group">
                          <label>Tỷ kệ xuất hiện</label>
                          <input type="text" value="{!!$thechat->percent!!}" class="form-control" name="percent">
                        </div>					
                        <div class="form-group">
                            <label>Mô tả</label>
                            <textarea name="des" class="form-control" cols="30" rows="10">{{$thechat->des}}</textarea>
                        </div>
                        <button type="submit" name="suathechat" class="btn btn-primary">Sửa</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
