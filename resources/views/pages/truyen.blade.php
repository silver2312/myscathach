@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<script type="text/javascript">
    document.title = "{{$bk->bk_name}}";
</script>
<div class="container">
    <div class="row justify-content-center ">
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-3">
                    <img src="{{$bk->bk_img}}" class="rounded" style="max-width:150px;max-height:250px;">
                </div>
                <div class="col-md-5">
                    <style type="text/css">
                        .infotruyen{
                            list-style: none;
                            padding: 5px;
                        }
                        .infotruyen li {
                            padding: 5px;
                        }
                        .mucluctruyen li a{
                            text-decoration: none;
                        }
                    </style>
                    <ul class="infotruyen">
                        <li>Tên truyện: {{$bk->bk_name}}</li>
                        <li>Người đăng: {{$bk->userW->name}}</li>
                        <li>Tác Giả: {{$bk->author}}</li>
                        <li>Danh mục: 
                            @foreach($bk->thuocnhieudanhmuctruyen as $thuocdanh)
                                <a href="{{url('the-loai/'.$thuocdanh->cate_slug)}}"><span class="badge badge-dark">{{$thuocdanh->cate_name}}</span></a>
                            @endforeach
                        </li>
                        </li></a>
                        @if($ch_fr)
                            <li><a href="{{url('doctruyen/'.$ch_fr->truyen_id.'/'.$ch_fr->position)}}" class="btn btn-primary">Đọc Online</a></li>                               
                        @endif
                    </ul>
                </div>
            </div>
            <br>
            <div class="col-md-12 col-12" s>
                <div class="container">
                    <div class="row justify-content-center ">
                        <div class="col-2 col-lg-2 text-center">
                            <i class="far fa-eye"></i>
                            <br>
                            <span>{{$bk->views}}</span>
                        </div>
                        <div class="col-3 col-lg-2 text-center">
                            <i class="far fa-book-open"></i>
                            <br>
                            <span>{{$bk->c_chap}}</span>
                        </div>
                        <div class="col-2 col-lg-2 text-center">
                            @if(Auth::user())
                                @if ($like)                                
                                    <i class="fas fa-heart"></i>
                                @else
                                    <a href="{{url('like/'.$bk->id)}}" class="btn btn-primary"><i class="fas fa-heart"></i></a>
                                @endif
                            @else  
                                <i class="fas fa-heart"></i>
                            @endif 
                            <br>
                            <span>
                                {{$bk->like}}
                            </span>
                        </div>
                        <div class="col-2 col-lg-2 text-center">
                            @if(Auth::user())
                                @if ($bmk)
                                    <i class="fas fa-bookmark"></i>
                                @else
                                    <a href="{{url('themtutruyen/'.$bk->id)}}" class="btn btn-primary"><i class="fas fa-bookmark"></i></a>
                                @endif
                            @else  
                                <i class="fas fa-bookmark"></i>
                            @endif 
                            <br>
                            <span>{{$bkmk}}</span>
                        </div>
                        <div class="col-3 col-lg-3 text-center">   
                            @if($bk->complete == 0)                         
                                <i class="fas fa-star-half"></i>
                                <br>
                                <span>Chưa hoàn thành</span>
                            @else
                                <i class="fas fa-star"></i>
                                <br>
                                <span>Hoàn thành</span>
                            @endif
                        </div>
                        <div class="col-2 col-lg-3 text-center">   
                            @if(Auth::user())
                                @if($bk->user_id == Auth::user()->id || Auth::user()->level==0)                        
                                <a href="{{url('truyen/'.$bk->id.'/edit')}}" class="btn btn-primary"><i class="fas fa-tools"></i></a>
                                <br>
                                <span>Sửa truyện</span>
                                @endif
                            @endif
                            {{-- @if(Auth::user())
                                @if($bk->user_id == Auth::user()->id || Auth::user()->level==0)
                                    <li><a href="{{url('truyen/'.$bk->id.'/edit')}}" class="btn btn-primary">Sửa truyện</a>&nbsp;<a href="{{url('chapter/'.$bk->id)}}" class="btn btn-primary">Thêm chương mới</a></li>                            
                                @endif
                            @endif --}}
                        </div>
                        <div class="col-3 col-lg-3 text-center">   
                            @if(Auth::user())
                                @if($bk->user_id == Auth::user()->id || Auth::user()->level==0)                        
                                <a href="{{url('chapter/'.$bk->id)}}" class="btn btn-primary"><i class="fas fa-plus"></i></a>
                                <br>
                                <span>Thêm chương</span>
                                @endif
                            @endif
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-12 col-12">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                @if (session('error'))
                    <div class="alert alert-danger" role="alert">
                        {{ session('error') }}
                    </div>
                @endif
                <hr>
                <h3>Giới thiệu</h3>                    
                <div style="padding-left:5%;"><p>{!! $bk->bk_des !!}</p></div>
                <hr>
                <h4>Danh sách chương</h4>
                <ul class="mucluctruyen">
                    @if($bk->c_chap==0)
                        Truyện chưa có chương nào
                    @else
                        @foreach($ch as $key => $chap)
                            <li><a href="{{url('doctruyen/'.$chap->truyen_id.'/'.$chap->position)}}">Chương {{$chap->position}}: {{$chap->header}}</a>
                            @if(Auth::user())
                                @if(Auth::user()->level==0 || Auth::user()->id == $bk->user_id)
                                    <a class="float-right" href="{{url('chapter/'.$chap->id.'/edit')}}">Sửa</a>
                                @endif
                            @endif
                            </li>                    
                        @endforeach
                    @endif
                </ul>
            </div>
            <div class="col-md-12 col-12">
                <hr>
                <h4>Bình luận</h4>
                <form class="form-inline" action="{{url('cmt/'.$bk->id)}}" method="post">
                    @csrf
                    <div class="col-md-12">
                        @if (session('status1'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status1') }}
                            </div>
                        @endif
                        @if (session('err'))
                            <div class="alert alert-danger" role="alert">
                                {{ session('err') }}
                            </div>
                        @endif
                        <textarea class="form-control" name="cmt" cols="50%" style="resize:none;" placeholder="Nhập bình luận ở đây..."></textarea>
                        <input type="submit" name="submit" class="btn btn-primary" value="Gửi">
                    </div>                 
                </form>
                <br>
                @include('pages.data.cmt')             
            </div>
        </div>
        
        <div class="col-md-3">
            <h3 class="card-header">Truyện liên quan</h3>
            @foreach($bycate as $key => $cungdanh)
		 		@foreach($cungdanh->nhieutruyen as $value)
		 			@if($value->id != $bk->id)
                        <div class="row mt-2">
                            <div class="col-sm-7 col-7"><img src="{{$value->bk_img}}" class="card-img-top" alt="{{$value->bk_name}}"></div>                            
                            <div class="col-sm-5 col-5 sidebar" >
                                <a href="{{url('xemtruyen/'.$value->bk_slug)}}">
                                    <p class="wrd1">{{$value->bk_name}}</p>
                                    <p>
                                        @foreach($value->thuocnhieudanhmuctruyen as $thuocdanh)                             
                                            <a href="{{url('the-loai/'.$thuocdanh->cate_slug)}}" ><span class="badge badge-dark" >{{$thuocdanh->cate_name}}</span></a>
                                        @endforeach 
                                    </p>
                                    <p>Lượt xem: {{$value->views}}</p>
                                </a>
                            </div>
                         </div>                    
                    @endif
               @endforeach
            @endforeach
        </div>  

    </div>
</div>
<script>
    $(document).ready(function(){
    
     $(document).on('click', '.pagination a', function(event){
      event.preventDefault(); 
      var page = $(this).attr('href').split('page=')[1];
      fetch_data(page);
     });
    
     function fetch_data(page)
     {
      $.ajax({
       url:'?page='+ page,
       success:function(cmt)
       {
        $('.comments').html(cmt);
       }
      });
     }
     
    });
</script>
@endsection