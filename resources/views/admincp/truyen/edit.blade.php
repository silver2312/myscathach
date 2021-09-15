@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sửa Truyện') }}</div>
                <div class="card-body">
                    <a class="btn btn-success col-md-2" href="{{url('truyen/')}}" role="button">Trở về</a>
                    <br>
					<br>
                    @if (session('error'))
                        <div class="alert alert-danger" role="alert">
                            {{ session('error') }}
                        </div>
                    @endif
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form  method="POST" action="{{route('truyen.update',[$bk->id])}}" enctype='multipart/form-data'>
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                            <label>Tên Truyện:&nbsp;&nbsp;&nbsp;</label>
                            <input class="form-control" type="text" value="{{$bk->bk_name}}" name="bk_name" readonly="readonly">
                            @if($bk->cate_id != 55)
                                <input name="bk_slug" value="{{$bk->bk_slug}}" hidden>
                            @else
                                <input type="text" name="bk_slug" value="truyen-nhung" hidden>
                            @endif
                        </div>
                        <div class="form-group">
                            <label>Link ảnh truyện</label>
                            <img src="{{$bk->bk_img}}" class="rounded mx-auto d-block" style="width:150px;height:250px;align:center;">
                            <br>
                            <input type="file" class="form-control-file" name="bk_img">
                        </div>
                        <div class="form-group">
                            <label>Tác giả</label>
                            <input type="text" value="{{$bk->author}}" class="form-control" name="author">                       
                        </div>
                        <div class="form-group">
                            <label>Danh mục truyện</label>
                            @foreach($cate as $key => $muc)
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" 
                                    @if( $thuocdanhmuc->contains($muc->id) ) checked @endif
                                    name="cate[]" type="checkbox" id="cate_{{$muc->id}}" value="{{$muc->id}}">
                                    <label class="form-check-label" for="cate_{{$muc->id}}">{{$muc->cate_name}}</label>
                                </div>
                            @endforeach
                        </div>
                        <div class="form-group">
                            <label>Đăng truyện</label>
                            <select name="bk_at" class="form-control">
                                @if($bk->bk_at==0)
                                    <option value="0" selected>Đăng</option>
                                @else
                                    <option value="0">Đăng</option>
                                    <option value="1" selected>Không Đăng</option>
                                @endif
                            </select>
                        </div>
                        @if(Auth::user()->level==0)
                        <div class="form-group">
                            <label>Đề cử</label>
                            <select name="vip" class="form-control">
                                @if($bk->vip == 0)
                                    <option value="0" selected>Chưa đề cử</option>
                                    <option value="1">Đã đề cử</option>
                                @else
                                    <option value="0">Chưa đề cử</option>
                                    <option value="1" selected>Đã đề cử</option>
                                @endif
                            </select>
                        </div>
                        @endif
                        <div class="form-group">
                            <label>Hoàn thành</label>
                            <select name="complete" class="form-control">
                                @if($bk->bk_at==0)
                                    <option value="0" selected>Chưa hoàn thành</option>
                                    <option value="1">Đã hoàn thành</option>
                                @else
                                    <option value="1" selected>Đã hoàn thành</option>
                                @endif
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Mô tả truyện</label>
                            <textarea id="ch_content" name="bk_des" class="form-control" cols="30" rows="10">{!!$bk->bk_des!!}</textarea>
                        </div>
                        <button type="submit" name="suatruyen" class="btn btn-primary">Sửa</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
