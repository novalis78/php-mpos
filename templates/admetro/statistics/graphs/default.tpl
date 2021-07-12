<!-- BEGIN #content -->
    <div id="content" class="app-content">
      <!-- BEGIN page-header -->
      <h1 class="page-header">
        Graphs <small></small>
      </h1>
      <!-- END page-header -->

<script>
$(function () {
  var miningstats = {$YOURMININGSTATS nofilter};
  var hashChart = Morris.Line({
    element: 'hashrate-area-chart',
    data: miningstats,
    xkey: 'time',
    ykeys: ['hashrate'],
    labels: ['Hashrate'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });

  var workersChart = Morris.Line({
    element: 'workers-area-chart',
    data: miningstats,
    xkey: 'time',
    ykeys: ['workers'],
    labels: ['Workers'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });

  var shareCharts= Morris.Line({
    element: 'sharerate-area-chart',
    data: miningstats,
    xkey: 'time',
    ykeys: ['sharerate'],
    labels: ['Sharerate'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });
});
</script>

<div class="row">
  <div class="col-lg-12">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-signal fa-fw"></i> Average Hashrate past 24h
      </div>
      <div class="card-body">
        <div id="hashrate-area-chart"></div>
      </div>
      <div class="card-footer">
        Your average hashrate per hour, updated every backend cron run.
      </div>
    </div>
  </div>
</div>

<div class="row" style="margin-top: 10px;">
  <div class="col-lg-12">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-signal fa-fw"></i> Average Workers past 24h
      </div>
      <div class="card-body">
        <div id="workers-area-chart"></div>
      </div>
      <div class="card-footer">
        Your average active workers per hour, updated every backend cron run.
      </div>
    </div>
  </div>
</div>

<div class="row" style="margin-top: 10px;">
  <div class="col-lg-12">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-signal fa-fw"></i> Average Sharerate past 24h
      </div>
      <div class="card-body">
        <div id="sharerate-area-chart"></div>
      </div>
      <div class="card-footer">
        Your share rate per hour, updated every backend cron run.
      </div>
    </div>
  </div>
</div>


</div>