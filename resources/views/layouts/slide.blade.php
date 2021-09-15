
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="background:rgb(242, 242, 242);">
      <div class="modal-body">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            @php
              $i = 0;
              $count = count($bk_vip) - 1;
              while($i<=$count){
                if($i == 0){
                  echo '<li data-target="#carouselExampleCaptions" data-slide-to="'.$i.'."0" class="active"></li>';
                }else{                  
                  echo '<li data-target="#carouselExampleCaptions" data-slide-to="'.$i.'."0"></li>';
                }
                $i+=1;
              }
            @endphp
          </ol>
          <div class="carousel-inner">

            @foreach ($bk_vip as $key => $value)
              @if($value->views == $max_views->views)
                <div class="carousel-item active">
              @else
                <div class="carousel-item">
              @endif
                <img src="{{$value->bk_img}}" class="d-block w-100" alt="{{$value->bk_name}}">
                <div class="carousel-caption d-none d-md-block" style="background-color:#E1E0E0; border-radius:25px; opacity:0.7;position: absolute;border-bottom:0;">
                  <a href="{{url('xemtruyen/'.$value->id)}}" style="text-decoration:none;font-family:'Dancing Script', cursive;" class="text-uppercase font-weight-bold"><h5>{{$value->bk_name}}</h5></a>
                  <p style="font-family:'Times New Roman', Times, serif;color:#FF1E80;;" class="font-weight-bold">{{$value->author}}</p>
                </div>
              </div>              
            @endforeach
          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<script type="text/javascript">
  $(window).on('load', function() {
      $('#myModal').modal('show');
  });
</script>