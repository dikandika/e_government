
@extends('dashboard.base')
    
@section('content')

<div class="container-fluid">
    <div class="animated fadeIn">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <div class="card">
              <div class="card-header">
                <div class="d-flex justify-content-between">
                    <div class="p-2"><h4>{{ __('SKCK') }}</h5></div>
                    <div class="p-2"><a href="{{ route('skck.create') }}" class="btn btn-primary">{{ __('CREATE') }}</a></div>
                  </div>
            </div>
              <div class="card-body">
                <table class="table table-striped table-bordered yajra-datatable">
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

@endsection


@section('javascript')
<script type="text/javascript">
    $(function () {
      
      var table = $('.yajra-datatable').DataTable({
          processing: true,
          serverSide: true,
          ajax: "{{ route('skck.list') }}",
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'nik', name: 'nik'},
              {data: 'nama', name: 'nama'},
              {data: 'alamat', name: 'alamat'},
              {
                  data: 'action', 
                  name: 'action', 
                  orderable: true, 
                  searchable: true
              },
          ]
      });
      
    });
  </script>
@endsection

