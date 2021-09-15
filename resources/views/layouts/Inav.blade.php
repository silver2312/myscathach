<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light ">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/cap-nhat')}}">Cập nhật</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">BXH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Thể loại
                    </a>
                    <div class="dropdown-menu col-md-12 col-12" aria-labelledby="themes">
                        @foreach($cate as $key => $value)
                            <a class="dropdown-item" href="{{url('the-loai/'.$value->cate_slug)}}">{{$value->cate_name}}</a>
                        @endforeach
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color:red;" href="#">Ủng hộ</a>
                </li>
                <li class="nav-item dropdown">
                    <select class="custom-select custom-select-sm" id="ch_color" style="margin-top:5px;">
                        <option value="cl_lg">Sáng</option>
                        <option value="cl_dk">Tối</option>
                    </select>
                </li>
            </ul>
        </div>       
            
        <form autocomplete="off" class="form-inline my-2 my-lg-0" action="{{url('timkiem')}}" method="GET">  
            <input class="form-control mr-sm-2" type="search" id="keywords" name="tukhoa" placeholder="Tìm kiếm" aria-label="Search">            
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>  
            <div class="col-md-12 col-12" id="search_ajax"></div>
        </form>    
    </nav>
</div>