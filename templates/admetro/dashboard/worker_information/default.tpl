{if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
<div class="card m-b-15">
    <!-- BEGIN card-header -->
    <div class="card-header">
      <h4 class="card-header-title">
        <i class="fa fa-desktop fa-fw"></i> Worker Information
      </h4>
    </div>
    <!-- END card-header -->
    <!-- BEGIN panel-body -->
    <div class="card-body">
      <table class="table table-bordered table-hover table-striped m-b-0"> 
       <thead>
        <tr>
          <th>Worker</th>
          <th>Hashrate</th>
          <th>Difficulty</th>
        </tr>
        </thead>
        <tbody id="b-workers">
          <td colspan="3" class="text-center">No worker information available</td>
        </tbody>
      </table>
    </div>
    <!-- END panel-body -->
  </div> 
{/if}