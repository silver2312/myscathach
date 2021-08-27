@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm Chương Truyện <strong style="font-size: x-large"><a style="text-decoration:none;" href="{{url('xemtruyen/'.$ch->id)}}">{{$ch->bk_name}}</a></strong></div>
                <div class="card-body">
                    <a class="btn btn-success col-md-2" href="{{url('truyen/'.$ch->id)}}" role="button">Trở về</a>
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
                    <form  method="POST" action="{{route('chapter.store')}}">
                        @csrf
                        <div class="form-group">
                            <label>STT chương Truyện</label>
                            <input type="number" class="form-control" value="{{$position}}" name="position" readonly="readonly">
                            <input type="hidden" name="truyen_id" value="{{$ch->id}}">
                            <input type="hidden" id="convert_slug" class="form-control" value="{{old('ch_slug')}}" name="ch_slug">
                        </div>
                        <div class="form-group">
                            <label>Tiêu đề Truyện</label>
                            <input type="text" id="slug" onkeyup="ChangeToSlug();" value="{{old('header')}}" class="form-control" name="header">
                        </div>
                        <div class="form-group">
                            <label>Nội dung</label>
                            <br>
                            <textarea name="content" id="ch_content" cols="83" rows="10">{{old('content')}}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Đăng truyện</label>
                            <select name="active" class="form-control">
                                <option value="0">Đăng</option>
                                <option value="1">Không Đăng</option>
                            </select>
                        </div>
                        <button type="submit" name="themchapter" class="btn btn-primary">Thêm</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
