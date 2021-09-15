@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sửa Tộc') }}</div>
                <div class="card-body">
                    <a class="btn btn-success col-md-2" href="{{url('toc/')}}" role="button">Trở về</a>
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
                    <form  method="POST" action="{{route('toc.update',[$race->id])}}">
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                            <label>Tên tộc:&nbsp;&nbsp;&nbsp;</label>
                            <input class="form-control" type="text" value="{{$race->name}}" name="name">
                        </div>
                        <div class="form-group">
                            <label>Tỷ lệ xuất hiện:&nbsp;&nbsp;&nbsp;</label>
                            <input class="form-control" type="text" value="{{$race->percent}}" name="percent">
                        </div>
                        <div class="form-group">
                            <label>Năng lượng</label><br>
                            @foreach($energy as $key => $value)
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" 
                                    @if( $ene->contains($value->id) ) checked @endif
                                    name="ene[]" type="checkbox" id="ene_{{$value->id}}" value="{{$value->id}}">
                                    <label class="form-check-label" for="ene_{{$value->id}}">{{$value->name}}</label>
                                </div>
                            @endforeach
                        </div>
                        <div class="form-group">
                            <label>Thể chất</label>
                            <br>
                            @foreach($thechat as $key => $value)
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" 
                                    @if( $the->contains($value->id) ) checked @endif
                                    name="the[]" type="checkbox" id="the_{{$value->id}}" value="{{$value->id}}">
                                    <label class="form-check-label" for="the_{{$value->id}}">{{$value->name}}</label>
                                </div>
                            @endforeach
                        </div>
                        <div class="form-group">
                            <label>Mô tả</label>
                            <textarea id="ch_content" name="des" class="form-control" cols="30" rows="10">{!!$race->des!!}</textarea>
                        </div>
                        <button type="submit" name="suatruyen" class="btn btn-primary">Sửa</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
