@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <h5 class="card-header">Truyện đề cử</h5>
                <div class="card-body" style="margin-bottom:20px;">
                    <div class="row">
                        @foreach($bk_vip as $key => $tr)                                         
                            <div class="col-lg-2 col-md-3 col-sm-3 col-4"> 
                                <div class="card">
                                    <img src="{{$tr->bk_img}}" class="card-img-top" style="max-height:229px;" alt="{{$tr->bk_name}}">                                    
                                    <div class="card-body" style="height:105px;">
                                        <a href="{{url('xemtruyen/'.$tr->bk_slug)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                        <p>{{$tr->author}}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header">Truyện nhiều lượt xem nhất</h5>
                <div class="card-body">
                    <div class="row">
                        @foreach($bk as $key => $tr)
                            <div class="col-lg-2 col-md-3 col-sm-3 col-4">
                                <div class="card">
                                    <img src="{{$tr->bk_img}}" class="card-img-top" style="max-height:229px;" alt="{{$tr->bk_name}}">
                                    <div class="card-body" style="height:105px;">
                                        <a href="{{url('xemtruyen/'.$tr->bk_slug)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                        <br>
                                        <p class="text-align">{{$tr->author}}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header">Truyện nhiều yêu thích</h5>
                <div class="card-body">
                    <div class="row">
                        @foreach($bk1 as $key => $tr)
                            <div class="col-lg-2 col-md-3 col-sm-3 col-4">
                                <div class="card">
                                    <img src="{{$tr->bk_img}}" class="card-img-top" style="max-height:229px;" alt="{{$tr->bk_name}}">
                                    <div class="card-body" style="height:105px;">
                                        <a href="{{url('xemtruyen/'.$tr->bk_slug)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header">Truyện mới cập nhật</h5>
                <div class="card-body">
                    <div class="container">
                        <div class="row justify-content-center">                            
                            <div class="col-md-9">
                                @foreach($bk_up as $key => $tr)
                                    <div class="row mt-2">                                   
                                        <div class="col-md-2 col-3 col-lg-1">
                                            <img src="{{$tr->bk_img}}" class="rounded card-img-top" style="position:absolute;width:50px;height:50px;align:center;">
                                        </div>  
                                        <div class="col-md-7 col-7 col-lg-8" style="height:50px;">
                                            <a href="{{url('xemtruyen/'.$tr->bk_slug)}}" style="text-decoration:none;"><p class="wrd1">{{$tr->bk_name}}</p></a>
                                            <p style="margin-top:-15px;">{{$tr->author}}</p>
                                        </div> 
                                    </div>   
                                @endforeach                     
                            </div>
                            <div col-md-3>
                                <h3>Top người online</h3>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection