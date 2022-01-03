
@extends('dashboard.base')
    
@section('content')

<div class="container-fluid">
    <div class="animated fadeIn">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
              <div class="card-header">
                <div class="d-flex justify-content-between">
                    <div class="p-2"><h4>{{ __('Izin Keramaian') }}</h5></div>
                    <div class="p-2"><a href="{{ route('izin_keramaian.create') }}" class="btn btn-primary">{{ __('Buat Surat Izin Keramaian') }}</a></div>
                  </div>
            </div>
              <div class="card-body">
                @if(Session::has('message'))
                      <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                  @endif
                <div class="row">
                  <div class="col-md-12">
                    <table class="table table-striped table-bordered yajra-datatable">
                      <colgroup>
                        <col/>
                        <col/>
                        <col/>
                        <col/>
                        <col width="15%"/>
                      </colgroup>
                        <thead class="thead-dark">
                            <tr>
                                <th>No</th>
                                <th>NIK</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                  </div>
                </div>
                
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <div class="modal fade" id="remove-izin_keramaian-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Delete Izin Keramaian</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <p>Are you sure?</p>
            </div>
            <div class="modal-footer">
                <form action="{{ route('izin_keramaian.delete') }}" method="POST">
                    @csrf
                    {{-- <input type="hidden" name="thisFolder" value="{{ $thisFolder }}"> --}}
                    <input type="hidden" name="id" value="" id="izin_keramaian-delete-id">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Delete</button>
                </form>
            </div>
        </div>
        <!-- /.modal-content-->
    </div>
    <!-- /.modal-dialog-->
</div>

@endsection


@section('javascript')
<script type="text/javascript">
    $(function () {

      const deleteModal = new coreui.Modal(document.getElementById('remove-izin_keramaian-modal'));
      const deleteId = document.getElementById('izin_keramaian-delete-id'); 
      
      var table = $('.yajra-datatable').DataTable({
          processing: true,
          serverSide: true,
          ajax: "{{ route('izin_keramaian.datatable') }}",
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'nik', name: 'nik'},
              {data: 'nama', name: 'nama'},
              {data: 'alamat', name: 'alamat'},
              {
                  data: 'action', 
                  name: 'action', 
                  orderable: false, 
                  searchable: false
              },
          ]
      });

      table.on( 'draw', function () {
        const deleteButtons = document.getElementsByClassName('izin_keramaian-delete-btn');

        console.log(deleteButtons)

          for(let i=0; i<deleteButtons.length; i++){
              deleteButtons[i].addEventListener('click', function (e) {
                deleteId.value = e.target.getAttribute('atr')
                deleteModal.show();
              } )
          }  
      });
      
    });
  </script>
@endsection

