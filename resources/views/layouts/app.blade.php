<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>MyScáthach</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>    
    <script src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>
    <script src="{{ asset('js/jquery-3.2.1.js') }}"></script>
    <script src="{{ asset('js/all.js') }}"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <link href="{{ asset('css/all.css') }}" rel="stylesheet">
</head>
<body>
    <div id="full">
        <div class="col-md-12 col-12 col-sm-12 col-lg-12 col-xl-12">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <a class="navbar-brand" href="{{ url('/') }}">
                        <img src="https://i.imgur.com/7Aj9IFs.png" style="max-width: 200px;">
                    </a>
                    <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <!-- Left Side Of Navbar -->

                        <!-- Right Side Of Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <!-- Authentication Links -->
                            @guest
                                @if (Route::has('login'))
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('login') }}">{{ __('Đăng nhập') }}</a>
                                    </li>
                                @endif

                                @if (Route::has('register'))
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('register') }}">{{ __('Đăng ký') }}</a>
                                    </li>
                                @endif
                            @else
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                        <img src="{{ Auth::user()->u_img }}" style="height: 60px;width: 60px;border-radius: 50%;" class="img-thumbnail">
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" style="width:100%;" href="{{ url('trang-ca-nhan/'.Auth::user()->id) }}">
                                            Trang cá nhân
                                        </a>
                                        @if (Auth::user() != null && Auth::user()->level == 0)
                                        <a style="width:100%;"><hr></a>
                                            <a class="dropdown-item" style="width:100%;" href="{{url('QL-User')}}">
                                                Quản lý User
                                            </a>
                                            <a class="dropdown-item" style="width:100%;" href="{{url('danhmuc')}}">
                                                Quản lý Thể loại
                                            </a>
                                            <a class="dropdown-item" style="width:100%;" href="{{url('truyen')}}">
                                                Quản lý Truyện
                                            </a>    
                                            <a style="width:100%;"><hr></a>                                         
                                        @endif
                                        <a class="dropdown-item" style="width:100%;">
                                            Bạn bè
                                        </a>
                                        <a class="dropdown-item" style="width:100%;">
                                            Tin nhắn
                                        </a>
                                        <a style="width:100%;"><hr></a>
                                        <a class="dropdown-item" style="width:100%;" href="{{ url('truyen') }}">
                                            {{ __('Truyện tôi viết') }}
                                        </a>
                                        <a class="dropdown-item" style="width:100%;"  href="{{ url('tutruyen') }}">
                                            {{ __('Tủ truyện') }}
                                        </a>
                                        <a style="width:100%;"><hr></a>
                                        <a class="dropdown-item" style="width:100%;"  href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                                        document.getElementById('logout-form').submit();">
                                            {{ __('Đăng Xuất') }}
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                            @csrf
                                        </form>
                                    </div>
                                </li>
                            @endguest
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        @yield('content')
    </div>

    <script type="text/javascript">        
        CKEDITOR.replace('ch_content');
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            if(localStorage.getItem('switch_color')!==null){
                const data = localStorage.getItem('switch_color');
                const data_obj = JSON.parse(data);
                $(document.body).addClass(data_obj.class_1);            
                $('.card-body').addClass(data_obj.class_1);      
                $('.card').addClass(data_obj.class_1);     
                $('ul > li >a.nav-link').addClass(data_obj.class_1); 
                $("select option[value='cl_dk']").attr("selected", "selected");
            }
            })
            $('#ch_color').change(function(){
                $(document.body).toggleClass('switch_color');
                $('.card-body').toggleClass('switch_color');
                $('.card').toggleClass('switch_color');
                $('ul > li >a.nav-link').toggleClass('switch_color');
                if($(this).val() == 'cl_dk'){
                    var item = {
                        'class_1':'switch_color',                 
                        }                       
                    localStorage.setItem('switch_color', JSON.stringify(item)); 
                }                          
                else if($(this).val() == 'cl_lg'){
                    localStorage.removeItem('switch_color');
                }
            });

        $('.select-chapter').on('change',function(){
    
            var url = $(this).val();
    
    
            if(url){
    
    
            window.location = url;
            
            }
            return false;
            });
    
            current_chapter();
    
            function current_chapter(){
    
                var url  = window.location.href; 
                $('.select-chapter').find('option[value="'+url+'"]').attr("selected",true);
            }
        function ChangeToSlug()
            {
                var slug;
             
                //Lấy text từ thẻ input title 
                slug = document.getElementById("slug").value;
                slug = slug.toLowerCase();
                //Đổi ký tự có dấu thành không dấu
                    slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
                    slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
                    slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
                    slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
                    slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
                    slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
                    slug = slug.replace(/đ/gi, 'd');
                    //Xóa các ký tự đặt biệt
                    slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
                    //Đổi khoảng trắng thành ký tự gạch ngang
                    slug = slug.replace(/ /gi, "-");
                    //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
                    //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
                    slug = slug.replace(/\-\-\-\-\-/gi, '-');
                    slug = slug.replace(/\-\-\-\-/gi, '-');
                    slug = slug.replace(/\-\-\-/gi, '-');
                    slug = slug.replace(/\-\-/gi, '-');
                    //Xóa các ký tự gạch ngang ở đầu và cuối
                    slug = '@' + slug + '@';
                    slug = slug.replace(/\@\-|\-\@|\@/gi, '');
                    //In slug ra textbox có id “slug”
                document.getElementById('convert_slug').value = slug;
            }   
    </script>
    
    <script type="text/javascript">   
        $('#keywords').keyup(function(){
            var query = $(this).val();

                if(query != '')
                {
                var _token = $('input[name="_token"]').val();

                $.ajax({
                    url:"{{url('/timkiem-ajax')}}",
                    method:"POST",
                    data:{query:query, _token:_token},
                    success:function(data){
                    $('#search_ajax').fadeIn();  
                    $('#search_ajax').html(data);
                    }
                });

                }else{

                    $('#search_ajax').fadeOut();  
                }
            });

            $(document).on('click', '.li_search_ajax', function(){  
                $('#keywords').val($(this).text());  
                $('#search_ajax').fadeOut();  
            }); 
    </script>
    
<footer>
    <div class="card text-center">
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#"><img src="https://i.imgur.com/7Aj9IFs.png" style="width:20%;height:20%;"></a>
        </div>
        <div class="card-footer text-muted">
            <?php
                date_default_timezone_set(timezone_name_from_abbr("UTC"));
                echo  date("d:m:y");
            ?>
        </div>
    </div>    
</footer>
</body>
</html>