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
      {{$ch->appends(request()->input())->links('pagination::bootstrap-4')}}
  @endif
</ul>