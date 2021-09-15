@extends('layouts.app')
@section('content')
@include('layouts.Inav')
@if(count($bk_vip) > 0)
    @include('layouts.slide')
@endif
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">            
            <div class="card">
                <h5 class="card-header">Truyện đề cử</h5>
                <div class="card-body">
                    <div class="row">
                        @foreach($bk_vip as $key => $tr)
                            <div class="col-lg-2 col-md-3 col-sm-3 col-4">
                                <div class="card">
                                    <img src="{{$tr->bk_img}}" class="card-img-top" style="max-height:229px;" alt="{{$tr->bk_name}}">
                                    <div class="card-body" style="height:105px;">
                                        <a href="{{url('xemtruyen/'.$tr->id)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                        <br>
                                        <p class="wrd">{{$tr->author}}</p>
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
                                        <a href="{{url('xemtruyen/'.$tr->id)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                        <br>
                                        <p class="wrd">{{$tr->author}}</p>
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
                                        <a href="{{url('xemtruyen/'.$tr->id)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                        <br>
                                        <p class="wrd">{{$tr->author}}</p>
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
                            <div class="col-md-8">
                                @foreach($bk_up as $key => $tr)
                                    <div class="row mt-2">                                   
                                        <div class="col-md-2 col-3 col-lg-1">
                                            <img src="{{$tr->bk_img}}" class="rounded card-img-top" style="position:absolute;width:50px;height:50px;align:center;">
                                        </div>  
                                        <div class="col-md-7 col-7 col-lg-8" style="height:50px;">
                                            <a href="{{url('xemtruyen/'.$tr->id)}}" style="text-decoration:none;"><p class="wrd1">{{$tr->bk_name}}</p></a>
                                            <p class="wrd" style="margin-top:-15px;left:15px;">{{$tr->author}}</p>
                                        </div> 
                                    </div>   
                                @endforeach                     
                            </div>
                            <br>
                            <div class="col-md-4 mt-2" style="background-color:silver;">
                                <iframe src="https://www5.cbox.ws/box/?boxid=928041&boxtag=RQAlk9" width="100%" height="500" allowtransparency="yes" allow="autoplay" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"></iframe>	
                            </div>                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection