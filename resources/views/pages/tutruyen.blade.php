@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<script type="text/javascript">
    document.title = "Tủ truyện";
</script>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                {{-- @php
                    $count = count($bk);
                @endphp--}}
                @if(count($t)==0)
                    <h5 class="card-header font-weight-bold text-uppercase">Chưa thêm truyện vào tủ...</h5>  
                @else 
                    <h5 class="card-header font-weight-bold text-uppercase">Tủ truyện</h5>
                    <div class="card-body">
                      @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                      @endif
                      @foreach ($us as $key => $val)  
                      @foreach ($val->nhieutruyen as $key => $v)
                        <div class="row mt-2">
                          <div class="col-sm-3 col-3">
                            <a href="{{url('xemtruyen/'.$v->id)}}"><img style="max-height:175px;max-width:140px;" src="{{$v->bk_img}}" class="card-img-top" alt="">
                            </a>
                          </div>                            
                          <div class="col-sm-9 col-9 sidebar">
                            <p class="font-weight-bold">{{$v->bk_name}}</p>
                            <p style="margin-top:-15px;">Tác giả: {{$v->author}}</p>
                            <p style="margin-top:-15px;">Số chương: {{$v->c_chap}}</p>
                            <p style="margin-top:-15px;">Ngày cập nhật: {{$v->updated_at}}</p>
                            <p style="margin-top:-15px;">Lượt xem: {{$v->views}}</p>
                            <a class="btn btn-danger" href="{{url('xoatu/'.$v->id)}}">Bỏ dấu</a>
                          </div>
                        </div>   
                        @endforeach                   
                      @endforeach
                    </div>  
                @endif
            </div>
        </div>
    </div>
</div>
@endsection