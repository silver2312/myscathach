@extends('layouts.app')
@section('content')
@include('layouts.Inav')

<script type="text/javascript">
    document.title = "Chương {{$ch->position}}: {{$ch->header}}";
</script>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12" style="text-align: center">
            <style type="text/css">
                .isDisable{
                    color: currentColor;
                    pointer-events: none;
                    opacity: 0.5;
                    text-decoration: none;
                }
                option{
                    width:150px;
                    position: relative;
                }
                ul > li{
                    font-size: 10px;
                }
            </style>
            <a href="{{url('xemtruyen/'.$ch->truyenC->id)}}" style="text-decoration: none;"><h3>{{$ch->truyenC->bk_name}}</h3></a>
            <div class="row justify-content-md-center">
            <nav aria-label="Page navigation example" style="text-alignt: center;">
                <ul class="pagination">
                    <li style="text-s" disabled><a class="page-link {{$ch->position==$min_id->position ? 'isDisable' : ''}}" href="{{url('doctruyen/'.$ch->truyen_id.'/'.$pre_ch)}}">Trước</a></li>
                    <li>                        
                        <select class="page-link select-chapter col-md-12 col-12" name="select-chapter" style="position: relative;height:30px;">
                            @foreach($all_ch as $key => $vle)
                                <option value="{{url('doctruyen/'.$vle->truyen_id.'/'.$vle->position)}}">{{$vle->header}}</option>
                            @endforeach
                        </select>
                    </li>
                    <li><a class="page-link {{$ch->position==$max_id->position ? 'isDisable' : ''}}" href="{{url('doctruyen/'.$ch->truyen_id.'/'.$next_ch)}}">Sau</a></li>
                </ul>
              </nav>
            </div>
        </div>
        <div class="col-md-12">
            <span>
                <small>@Truyện được đăng trên MyScáthach</small>
                <br>
                <br>
                <p>{!! $content !!}</p>
            </span>
        </div>
        <div class="col-md-12" style="text-align: center">
            <div class="row justify-content-md-center">
            <nav aria-label="Page navigation example" style="text-alignt: center;">
                <ul class="pagination">
                    <li><a class="page-link {{$ch->position==$min_id->position ? 'isDisable' : ''}}" href="{{url('doctruyen/'.$ch->truyen_id.'/'.$pre_ch)}}">Trước</a></li>
                    <li> 
                        <select class="page-link select-chapter" name="select-chapter" style="position: relative;height:30px;">
                            @foreach($all_ch as $key => $vle)
                                <option value="{{url('doctruyen/'.$vle->truyen_id.'/'.$vle->position)}}">{{$vle->header}}</option>
                            @endforeach
                        </select>     
                    </li>
                    <li><a class="page-link {{$ch->position==$max_id->position ? 'isDisable' : ''}}" href="{{url('doctruyen/'.$ch->truyen_id.'/'.$next_ch)}}">Sau</a></li>
                </ul>
              </nav>
            </div>
        </div>
    </div>
</div>

@endsection