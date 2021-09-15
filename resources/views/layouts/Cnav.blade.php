<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light">
    @if(Auth::user())
      <a class="navbar-brand" style="color:silver;" href="{{url('nhan-vat/'.Auth::user()->id)}}">Nhân vật</a>
    @else
      <a class="navbar-brand" href="{{url('register')}}">Nhân vật</a>
    @endif
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    @if(Auth::user()!= null )
      <div class="collapse navbar-collapse" id="navbarScroll">
        <ul class="navbar-nav mr-auto my-2 my-lg-0 navbar-nav-scroll" style="max-height: 100px;">
          <li class="nav-item active">
            <a class="nav-link" href="#">Túi đồ <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Train</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Chiến BOSS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Bang Hội</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Bang chiến</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Solo</a>
          </li>
          <li class="nav-item dropdown">
            <select class="custom-select custom-select-sm" id="ch_color" style="margin-top:5px;">
                <option value="cl_lg">Sáng</option>
                <option value="cl_dk">Tối</option>
            </select>
          </li>
        </ul>
      </div>
    @endif
  </nav>
  </div>