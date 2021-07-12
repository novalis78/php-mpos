<!-- BEGIN #content -->
    <div id="content" class="app-content">
      <!-- BEGIN page-header -->
      <h1 class="page-header">
        Dashboard <small>overview, analytics & report</small>
      </h1>
      <!-- END page-header -->

  <div class="col-lg-6">
    <div class="card panel-info">
      <div class="card-header">
        General Statistics
      </div>
      <div class="card-body">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
            <tr>
              <td class="leftheader">Pool Hash Rate</td>
              <td>{$GLOBAL.hashrate} {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <td class="leftheader">Current Total Miners</td>
              <td>{$GLOBAL.workers}</td>
            </tr>
            <tr>
              <td class="leftheader">Current Block</td>
              <td><a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCK}" target="_new">{$CURRENTBLOCK}</a></td>
            </tr>
            <tr>
              <td class="leftheader">Current Difficulty</td>
              <td><a href="http://allchains.info/" target="_new">{$DIFFICULTY}</a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="card-footer">
        {if !$GLOBAL.website.api.disabled}<ul><li>These stats are also available in JSON format <a href="{$smarty.server.SCRIPT_NAME}?page=api&action=public" target="_api">HERE</a></li>{/if}
      </div>
    </div>
  </div>
</div>


</div>