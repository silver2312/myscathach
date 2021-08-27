<ul class="mucluctruyen">
  @if($bk->c_chap==0)
      Truyện chưa có chương nào
  @else
      @foreach($ch as $key => $chap)
          <li><a href="{{url('doctruyen/'.$chap->truyen_id.'/'.$chap->position)}}">
              @if($chap->header != null)
                  {{$chap->header}}
              @else
                  Chương {{$chap->position}}
              @endif
          </a>
              @if(Auth::user())
                  @if(Auth::user()->level==0 || Auth::user()->id == $bk->user_id)
                      <a class="float-right" href="{{url('chapter/'.$chap->id.'/edit')}}">Sửa</a>
                  @endif
              @endif
          </li>  
      @endforeach
      <nav aria-label="Page navigation example">
        <ul class="pagination">
            @if (!($ch->onFirstPage()))
                <li class="page-item"><a class="page-link" href="{{ $ch->previousPageUrl() }}" rel="prev">← Trở về</a></li>
            @endif
            @if ($ch->hasMorePages())
                <li class="page-item"><a class="page-link" href="{{ $ch->nextPageUrl() }}" rel="next">Xem thêm →</a></li>
            @endif
        </ul>
      </nav>
  @endif
</ul>