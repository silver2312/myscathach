<div class="col-md-12 col-12 float-left">
  <div class="blog-comment">
      
      <ul class="comments">
      @foreach ($cmt as $key => $cm )   
      <!-- Modal -->
          <div class="modal fade" id="cmt_{{$cm->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLongTitle">Trả lời bình luận</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                      </div>
                      <form class="form-inline" action="{{url('rep/'.$cm->id)}}" method="post">
                          @csrf
                          <div class="modal-body">
                              <textarea class="form-control" name="rep" cols="50%" style="resize:none;">{{$cm->name}}: &nbsp;</textarea>
                          </div>
                          <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                              <input type="submit" name="submit" class="btn btn-primary" value="Gửi">
                          </div>
                      </form>
                  </div>
              </div>
          </div>  
          <li class="clearfix">
              <div class="post-comments">
                  <p class="meta"><a href="{{url('user/'.$cm->user_id)}}">{{$cm->name}}</a> {{$cm->create_at}}  says : <i class="pull-right"><small style="color:green;" data-toggle="modal" data-target="#cmt_{{$cm->id}}">Reply</small></i></p>
                  <p>{{$cm->cmt}}<p>
              </div>
              {{-- Rep --}}
              @foreach ($cm->mrep as $key => $rep )
                  @if($cm->id == $rep->cmt_id)
                      <ul class="comments" style="margin-left:30px;">
                          <li class="clearfix">
                              <div class="post-comments">
                                  <p class="meta"><a href="{{url('user/'.$rep->user_id)}}">{{$rep->name}}</a> {{$rep->create_at}}  says : <i class="pull-right"><small style="color:green;" data-toggle="modal" data-target="#rep_{{$rep->id}}">Reply</small></i></p>
                                  <p>{{$rep->rep}}</p>
                              </div>
                          </li>
                      </ul>
                  @endif
              {{-- enRep --}}   
              <!-- Modal -->
                  <div class="modal fade" id="rep_{{$rep->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered" role="document">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLongTitle">Trả lời bình luận</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                  </button>
                              </div>
                              <form class="form-inline" action="{{url('rep/'.$rep->cmt_id)}}" method="post">
                                  @csrf
                                  <div class="modal-body">
                                      <textarea class="form-control" name="rep" cols="50%" style="resize:none;">{{$rep->name}}: &nbsp;</textarea>
                                  </div>
                                  <div class="modal-footer">
                                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                      <input type="submit" name="submit" class="btn btn-primary" value="Gửi">
                                  </div>
                              </form>
                          </div>
                      </div>
                  </div> 
              @endforeach
          </li>                       
          @endforeach
          <nav aria-label="Page navigation example">
            <ul class="pagination">
                @if (!($cmt->onFirstPage()))
                    <li class="page-item"><a class="page-link" href="{{ $cmt->previousPageUrl() }}" rel="prev">← Trở về</a></li>
                @endif
                @if ($cmt->hasMorePages())
                    <li class="page-item"><a class="page-link" href="{{ $cmt->nextPageUrl() }}" rel="next">Xem thêm →</a></li>
                @endif
            </ul>
          </nav>
          
      </ul>
  </div>
</div> 