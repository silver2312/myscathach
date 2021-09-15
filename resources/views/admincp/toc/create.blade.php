@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Thêm Tộc') }}</div>
                <div class="card-body">
                    <a class="btn btn-success col-md-2" href="{{url('toc/')}}" role="button">Trở về</a>
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
                    <form  method="POST" action="{{route('toc.store')}}">
                        @csrf
                        <div class="form-group">
                            <label>Tên Tộc</label>
                            <input type="text"value="{{old('name')}}" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label>Tỷ lệ xuất hiện</label>
                            <input type="text"value="{{old('percent')}}" class="form-control" name="percent">
                        </div>
                        <div class="form-group">
                            <label>Chọn năng lượng</label>
                            <br>
                            @foreach($energy as $key => $value)
                            <div class="form-check form-check-inline">                          
                                <input class="form-check-input" name="ene[]" type="checkbox" id="ene_{{$value->id}}" value="{{$value->id}}">
                                <label class="form-check-label" for="ene_{{$value->id}}">{{$value->name}}</label>                                 
                            </div>
                            @endforeach
                        </div>
                        <div class="form-group">
                            <label>Chọn Thể chất</label>
                            <br>
                            @foreach($thechat as $key => $value)
                            <div class="form-check form-check-inline">                          
                                <input class="form-check-input" name="thechat[]" type="checkbox" id="thechat_{{$value->id}}" value="{{$value->id}}">
                                <label class="form-check-label" for="thechat_{{$value->id}}">{{$value->name}}</label>                                 
                            </div>
                            @endforeach
                        </div>
                        <div class="form-group">
                            <label>Mô tả truyện</label>
                            <textarea id="ch_content" name="des" class="form-control" cols="30" rows="10">{{old('des')}}</textarea>
                        </div>
                        <button type="submit" name="themtoc" class="btn btn-primary">Thêm</button>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
