  <div class="col-lg-6">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-users fa-fw"></i> <a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=invitations">Invitations</a>
      </div>
      <div class="card-body no-padding">
        <table class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
              <th>Total</th>
              <th>Activated</th>
              <th>Outstanding</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>{$INVITATION_INFO.total}</td>
              <td>{$INVITATION_INFO.activated}</td>
              <td>{$INVITATION_INFO.outstanding}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>