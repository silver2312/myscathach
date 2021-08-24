@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<script type="text/javascript">
    document.title = "{{$cate_id->cate_name}}";
</script>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                @php
                    $count = count($bk);
                @endphp
                @if($count==0)
                    <h5 class="card-header font-weight-bold text-uppercase">Truyện đang cập nhật...</h5>  
                @else
                    <h5 class="card-header font-weight-bold text-uppercase">{{$cate_id->cate_name}}</h5>
                    
                    <div class="card-body">
                        <div class="row cate_data">
                          @foreach($bk as $key => $tr)
                              <div class="col-xl-1 col-lg-2 col-md-3 col-sm-4 col-4" style="padding:4px;"> 
                                  <div class="card">
                                      <img src="{{$tr->bk_img}}" class="card-img-top" alt="{{$tr->bk_name}}">
                                      <div class="card-body" style="height:105px;">
                                      <a href="{{url('xemtruyen/'.$tr->bk_slug)}}" style="text-decoration:none;" class="font-weight-bold wrd">{{$tr->bk_name}}</a>
                                      </div>
                                  </div>
                              </div>
                          @endforeach
                        </div>
                      </div>
                @endif
            </div>
        </div>
        
        {{$bk->onEachSide(1)->links('pagination::bootstrap-4')}}
        
    </div>
</div>

@endsection