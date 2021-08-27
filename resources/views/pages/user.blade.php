@extends('layouts.app')
@section('content')
@include('layouts.Inav')
<style type="text/css">
body{
    margin-top:20px;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
.me-2 {
    margin-right: .5rem!important;
}
</style>
<div class="container">
  <div class="main-body">
    <div class="row">
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
            <div class="d-flex flex-column align-items-center text-center">
              @if(Auth::user() != null)
                @if(Auth::user()->id == $u_pf->id || Auth::user()->level == 0)
                  <a style="position: absolute;left:25px;top:25px;color:red;" href=""><i class="far fa-edit"></i></a>
                @endif
              @endif
              <img src="{{$u_pf->u_img}}" alt="Admin" class="rounded p-1 bg-primary" width="100%">
              <div class="mt-3">
                <h4><span  class="font-weight-bold color_name">{{$u_pf->name}}</span> 
                  @if(Auth::user() != null)
                    @if(Auth::user()->id == $u_pf->id || Auth::user()->level == 0)
                      <a href=""><i class="far fa-edit"></i></a> 
                    @endif
                  @endif
                </h4>
                <p class="text-secondary mb-1">Danh hiệu: Không</p>
                <p class="text-muted font-size-sm">Thành tựu: Không</p>
                <p class="text-center" style="margin-top:-10px;font-size:20px;color:rgb(255, 0, 0);">Quyền: @if ($u_pf->level == 0) Admin @elseif($u_pf->level == 1) Mod @elseif($u_pf->level == 2) Vip @else Bình thường @endif</p>
                {{-- @if(Auth::user()!=null && Auth::user()->id != $u_pf->id)
                <button class="btn btn-primary">Thêm bạn</button>
                <button class="btn btn-outline-primary">Nhắn tin riêng</button>
                @endif --}}
              </div>
            </div>
            <hr class="my-2">
            <ul class="list-group list-group-flush">
              <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                <h6 class="mb-0"><i class="fab fa-edge" style="width:24px;height:24px;"></i>&nbsp;&nbsp;Website</h6>
                <span class="text-secondary wrd" style="width:150px;left:150px;bottom:10px;"><a style="text-decoration:none;" href="{{$profile->web}}">{{$profile->web}}</a></span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                <h6 class="mb-0"><i class="fab fa-github" style="width:24px;height:24px;"></i>&nbsp;&nbsp;Github</h6>
                <span class="text-secondary wrd" style="width:150px;left:150px;bottom:10px;"><a style="text-decoration:none;" href="{{$profile->git}}">{{$profile->git}}</a></span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                <h6 class="mb-0"><i class="fab fa-twitter" style="width:24px;height:24px;"></i>&nbsp;&nbsp;Twitter</h6>
                <span class="text-secondary wrd" style="width:150px;left:150px;bottom:10px;"><a style="text-decoration:none;" href="{{$profile->twi}}">{{$profile->twi}}</a></span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                <h6 class="mb-0"><i class="fab fa-instagram" style="width:24px;height:24px;"></i>&nbsp;&nbsp;Instagram</h6>
                <span class="text-secondary wrd" style="width:150px;left:150px;bottom:10px;"><a style="text-decoration:none;" href="{{$profile->ins}}">{{$profile->ins}}</a></span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                <h6 class="mb-0"><i class="fab fa-facebook" style="width:24px;height:24px;"></i>&nbsp;&nbsp;Facebook</h6>
                <span class="text-secondary wrd" style="width:150px;left:150px;bottom:10px;"><a style="text-decoration:none;" href="{{$profile->fb}}">{{$profile->fb}}</a></span>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        
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
        <div class="card">
          <div class="card-body">
            <div class="row mb-3">
              <div class="col-sm-3">
                <h6 class="mb-0">Giới tính</h6>
              </div>
              <div class="col-sm-9 text-secondary">
                Nam
              </div>
            </div>
            <div class="row mb-3">
              <div class="col-sm-3">
                <h6 class="mb-0">Sở thích</h6>
              </div>
              <div class="col-sm-9 text-secondary">
                <textarea class="form-control" cols="10" style="resize:none;" readonly="readonly">{{$profile->bio}}</textarea>
              </div>
            </div>
            <div class="row mb-3">
              <div class="col-sm-3">
                <h6 class="mb-0">Giới thiệu</h6>
              </div>
              <div class="col-sm-9 text-secondary">
                <textarea class="form-control" cols="10" style="resize:none;" readonly="readonly">{{$profile->des}}</textarea>
              </div>
            </div>
            @if(Auth::user() != null)
              @if(Auth::user()->id == $u_pf->id || Auth::user()->level == 0)
                <div class="row">
                  <div class="col-sm-3"></div>
                  <div class="col-sm-9 text-secondary">
                    <button type="button" class="btn btn-primary px-4" data-toggle="modal" data-target="#edit_profile">Edit</button>                
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit_pwd">Đổi mật khẩu</button>
                  </div>
                </div>
              @endif          
            @endif
            {{-- form edit --}}
            <div class="modal fade" id="edit_profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLongTitle">Sửa thông tin</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                      </div>
                      <form action="{{url('profile/')}}" method="post">
                          @csrf
                          <div class="modal-body">
                              <label>Giới tính</label>
                              <select class="form-control" name="sex">
                                <option value="0">Nam</option>
                                <option value="1">Nữ</option>
                              </select>
                              <label>Sở thích</label>
                              <textarea class="form-control" name="bio" style="resize:none;">{{$profile->bio}}</textarea>  
                              <br>
                              <label>Giới thiệu</label>
                              <textarea class="form-control" name="des" style="resize:none;">{{$profile->des}}</textarea>
                              <br>
                              <label>Website</label>
                              <input type="text" class="form-control" value="{{$profile->web}}" name="web">
                              <br>
                              <label>Github</label>
                              <input type="text" class="form-control" value="{{$profile->git}}" name="git">
                              <br>
                              <label>Twitter</label>
                              <input type="text" class="form-control" value="{{$profile->twi}}" name="twi">
                              <br>
                              <label>Instagram</label>
                              <input type="text" class="form-control" value="{{$profile->ins}}" name="ins">
                              <br>
                              <label>Facebook</label>
                              <input type="text" class="form-control" value="{{$profile->fb}}" name="fb">
                              <br>
                          </div>
                          <div class="modal-footer">
                              <input type="submit" name="submit" class="btn btn-primary" value="Gửi">
                          </div>
                      </form>
                  </div>
              </div>
            </div>  
            {{-- đổi mật khẩu --}}
            <div class="modal fade" id="edit_pwd" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Đổi mật khẩu</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{url('cpwd/')}}" method="post">
                        @csrf
                        <div class="modal-body">
                            <label>Mật khẩu cũ</label>
                            <input type="password" class="form-control" name="old_pwd" value="{{ old('old_pwd') }}">
                            <br>
                            <label>Mật khẩu mới</label>
                            <input type="password" class="form-control" name="new_pwd" value="{{ old('new_pwd') }}">
                            <br>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" name="submit" onclick="return confirm('Bạn có chắc chắn muốn đổi mật khẩu không?')" class="btn btn-primary" value="Gửi">
                        </div>
                    </form>
                </div>
            </div>
          </div>  


          </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <div class="card">
              <div class="card-body">
                <h5 class="d-flex align-items-center mb-3">Thành tích</h5>
                <p>{{$u_pf->name}} đã viết/nhúng : {{$c_tr}} truyện</p>
                <p>{{$u_pf->name}} đã viết/nhúng : {{$ctr_chap}} chương truyện</p>
                <p>Truyện của {{$u_pf->name}} được tổng : {{$ctr_like}} like</p>
                <p>Truyện của {{$u_pf->name}} được tổng : {{$c_cmm}} bình luận</p>
                <p>{{$u_pf->name}} đã like : {{$c_like}} truyện</p>
                <p>{{$u_pf->name}} đã bình luận truyện : {{$c_cmt}} lần</p>
                <p>{{$u_pf->name}} có : {{$c_list}} truyện trong tủ</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      {{-- Bình luận --}}
      <div class="col-md-12 col-12">
        <hr>
        <h4>Bình luận</h4>
        @if(Auth::user())
        <form class="form-inline" action="{{url('ucmt/')}}" method="post">
            @csrf
            <div class="col-md-12">
                <textarea class="form-control" name="cmt" cols="100%" style="resize:none;" placeholder="Nhập bình luận ở đây..."></textarea>
                <input type="submit" name="submit" class="btn btn-primary" value="Gửi">
            </div>                 
        </form>
        <br>
        @include('pages.data.cmt')   
        @else
        <h5 style="color:red">Bạn phải đăng nhập để viết/xem bình luận</h5>
        @endif          
    </div>
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
