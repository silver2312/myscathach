@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<script type="text/javascript">
    document.title = "Tìm kiếm: ";
</script>
<div class="container">
    <div class="row justify-content-center">
          <div class="card mt-2 mb-12 col-12">
            <div class="row no-gutters">
              <div class="col-md-4 col-4">
                <img src="..." alt="...">
              </div>
              <div class="col-md-8 col-8">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                  <a class="btn btn-primary"> Đọc thêm</a>
                  <p class="card-text"><small class="text-muted">Đăng bởi: </small><small class="text-muted">Thời gian đăng: </small></p>
                </div>
              </div>
            </div>
          </div>
        
        {{-- {{$bk->appends(request()->input())->links('pagination::bootstrap-4')}} --}}
    </div>
</div>
@endsection