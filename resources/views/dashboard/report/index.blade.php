
@extends('dashboard.base')
    
@section('content')

<div class="container-fluid">
    <div class="animated fadeIn">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">Jumlah Pengguna Layanan
              <div class="card-header-actions"><a class="card-header-action" href="http://www.chartjs.org" target="_blank"><small class="text-muted">Per Bulan</small></a></div>
            </div>
            <div class="card-body">
              <div class="c-chart-wrapper" style="height: 500px">
                <canvas id="chartPerMonth"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

@endsection


@section('javascript')
<script src="{{ asset('js/Chart.min.js') }}"></script>
<script src="{{ asset('js/coreui-chartjs.bundle.js') }}"></script>
<script src="{{ asset('js/charts.js') }}"></script>
<script type="text/javascript">
    $(function () {
      $.get( "/report/datachart", function( result ) {

        try {
          let data = [];
          if (typeof result === "string") {
            data = JSON.parse(result);
          }


          let chartData = {};
          chartData['skck'] = [];
          chartData['keramaian'] = [];
          chartData['pengawalan'] = [];

          let datasets = [];

          if(result && result.length > 0) {
            const labels = data.map(d => d.month);

            data.forEach(d => {
              chartData['skck'].push(d['skck']);
              chartData['keramaian'].push(d['keramaian']);
              chartData['pengawalan'].push(d['pengawalan']);
            });
            
            datasets = [
              {
                label: "SKCK",
                backgroundColor : 'rgba(250, 220, 102, 0.5)',
                data : chartData['skck']
              },
              {
                label: "Izin Keramaian",
                backgroundColor : 'rgba(178, 250, 102, 0.5)',
                data : chartData['keramaian']
              },
              {
                label: "Pengawalan Jalan",
                backgroundColor : 'rgba(102, 159, 250, 0.5)',
                data : chartData['pengawalan']
              }
            ];

            renderChart(labels, datasets);
          }
          
        } catch (err) {
          console.error(err);
        }
      });
      
    });

    function renderChart(labels, datasets) {
      const barChart = new Chart(document.getElementById('chartPerMonth'), {
        type: 'bar',
        data: {
          labels : labels,
          datasets : datasets
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          scales: {
              yAxes: [{
                  // display: true,
                  ticks: {
                      min: 0, // minimum value
                      max: 100 // maximum value
                  }
              }]
          }
        }
      })
    }
  </script>
@endsection

