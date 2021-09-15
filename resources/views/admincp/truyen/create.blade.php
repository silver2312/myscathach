@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Thêm Truyện') }}</div>
                <div class="card-body">
                    <a class="btn btn-success col-md-2" href="{{url('truyen/')}}" role="button">Trở về</a>
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
                    <form  method="POST" action="{{route('truyen.store')}}" enctype='multipart/form-data'>
                        @csrf
                        <div class="form-group">
                            <label>Tên Truyện</label>
                            <input type="text" id="slug" onkeyup="ChangeToSlug();" value="{{old('bk_name')}}" class="form-control" name="bk_name">
                            <input type="hidden" id="convert_slug" class="form-control" name="bk_slug" value="{{old('bk_slug')}}">
                        </div>
                        <div class="form-group">
                            <label>Ảnh truyện</label>
                            <input type="file" class="form-control-file" name="bk_img">
                        </div>
                        <div class="form-group">
                            <label>Tác giả</label>
                            <input type="text" value="{{old('author')}}" class="form-control" name="author">
                        </div>
                        <input type="hidden" value="{{Auth::user()->id}}" name="user_id">
                        <div class="form-group">
                            <label>Danh mục truyện</label>
                            <br>
                            @foreach($cat as $key => $cate)
                            <div class="form-check form-check-inline">                          
                                <input class="form-check-input" name="cate[]" type="checkbox" id="cate_{{$cate->id}}" value="{{$cate->id}}">
                                <label class="form-check-label" for="cate_{{$cate->id}}">{{$cate->cate_name}}</label>                                 
                            </div>
                            @endforeach
                        </div>
                        <div class="form-group">
                            <label>Hoàn Thành</label>
                            <select name="complete" class="form-control">
                                <option value="0">Chưa hoàn thành</option>
                                <option value="1">Đã hoàn thành</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Đăng truyện</label>
                            <select name="bk_at" class="form-control">
                                <option value="0">Đăng</option>
                                <option value="1">Không Đăng</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Mô tả truyện</label>
                            <textarea id="ch_content" name="bk_des" class="form-control" cols="30" rows="10">{{old('bk_des')}}</textarea>
                        </div>
                        <button type="submit" name="themtruyen" class="btn btn-primary">Thêm</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
