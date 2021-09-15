@extends('layouts.app')
@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sửa thể loại') }}</div>
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
                    <form  method="POST" action="{{route('danhmuc.update',[$ca->id])}}">
						@method('PUT')
                        @csrf
                        <div class="form-group">
                          <label>Tên Thể Loại</label>
                          <input type="text" id="slug" onkeyup="ChangeToSlug();" class="form-control" name="cate_name" value="{{$ca->cate_name}}">
                          <input type="hidden" id="convert_slug"  value="{{$ca->cate_slug}}" class="form-control" name="cate_slug">
                        </div>						
                        <div class="form-group">
                            <label>Mô tả thể loại</label>
                            <textarea name="cate_des" class="form-control" cols="30" rows="10">{{$ca->cate_des}}</textarea>
                        </div>
                        <button type="submit" name="suadanhmuc" class="btn btn-primary">Sửa</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
