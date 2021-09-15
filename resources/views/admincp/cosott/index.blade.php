@extends('layouts.app')
<?php use App\Models\Toc_Thechat; ?>
@section('content')
@include('layouts.Inav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Thuộc tính cơ bản') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Tên Thể Chất</th>
                                <th scope="col">Tên tộc</th>
                                <th>BUFF</th>
                                <th scope="col">Sửa</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($thechat as $key => $value)
                              @foreach ($value->nhieu_toc as $key => $val)
                                <tr>
                                    <td>{{$value->name}}</td>
                                    <td>{{$val->name}}</td>
                                    <td>@php
                                        $ad = Toc_Thechat::where('phy_id',$value->id)->where('race_id',$val->id)->first();
                                        echo $ad->buff." lần";
                                    @endphp</td>
                                    <td><a class="btn btn-primary" href="#" data-toggle="modal" data-target="#edit_buff_{{$value->id}}_{{$val->id}}">Sửa</a></td>     
                                    {{-- form thay đổi buff --}}
                                    <div class="modal fade" id="edit_buff_{{$value->id}}_{{$val->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle">Đổi Buff</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form action="{{url('change_buff/'.$ad->id)}}" method="post">
                                                    @csrf
                                                    <div class="modal-body">
                                                        <input type="number" min="1" class="form-control" name="buff" value="{{ old('buff') }}">
                                                    </div>
                                                    <div class="modal-footer">
                                                        <input type="submit" name="submit" class="btn btn-primary" value="Gửi">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div> 
                                    {{-- hết form thay đổi buff --}}                           
                                </tr>                              
                              @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

