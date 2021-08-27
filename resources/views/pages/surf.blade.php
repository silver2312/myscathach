@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<script type="text/javascript">
    document.title = "Nhúng truyện";
</script>
<div class="container">
  <div class="row justify-content-center">
      <div class="col-md-8">
          <div class="card">
              <div class="card-header">{{ __('Nhúng truyện') }}</div>

              <div class="card-body">
                  @if (session('status'))
                      <div class="alert alert-success" role="alert">
                          {{ session('status') }}
                      </div>
                  @endif
                  @if (session('err'))
                      <div class="alert alert-danger" role="alert">
                          {{ session('err') }}
                      </div>
                  @endif
                  <p><small style="color:red">Note: Dán link truyện cần nhúng rồi chờ đến khi có thông báo. Bạn phải lấy link đúng với host truyện đã chọn.Nếu thêm quá nhiều truyện lỗi bạn sẽ bị chặn nhúng truyện.</small></p>
                  <form autocomplete="off" method="post" action="{{url('nhung/')}}">
                    @csrf
                    <div class="form-group col-md-4">
                      <label for="exampleFormControlSelect1">Host truyện</label>
                      <select class="form-control" name="host">
                        <option value="1">uukanshu(PC)</option>
                      </select>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Link Nhúng</label>
                      <input type="text" name="link" class="form-control" placeholder="Nhập link ở đây">
                    </div>
                    <button type="submit" class="btn btn-primary">Nhúng</button>
                  </form>
              </div>
          </div>
      </div>
  </div>
</div> 
@endsection