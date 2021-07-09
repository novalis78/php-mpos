<div class="card m-b-15">
      <div class="card-header">
      <h4 class="card-header-title"><i class="fa fa-user-md fa-fw"></i> Account Information</h4>
      </div>
      <div class="card-body no-padding">
        <table class="table table-bordered table-hover table-striped">
          <tr>
            <td colspan="2">
    {if $GLOBAL.userdata.no_fees}
            You are mining without any pool fees applied and
    {else if $GLOBAL.fees > 0}
            You are mining at <font color="orange">{if $GLOBAL.fees < 0.0001}{$GLOBAL.fees|escape|number_format:"8"}{else}{$GLOBAL.fees|escape}{/if}%</font> pool fee and
    {else}
            This pool does not apply fees and
    {/if}
    {if $GLOBAL.userdata.donate_percent > 0}
            you donate <font color="green">{$GLOBAL.userdata.donate_percent|escape}%</font>.
    {else}
            you are not <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit">donating</a>.
    {/if}
            </td>
          </tr>
        </table>
        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr><th colspan="2">{$GLOBAL.config.currency} Account Balance</th></tr>
          </thead>
          <tbody>
            <tr>
              <th>Confirmed</th>
              <th>
                <span class="label label-success pull-right bigfont" id="b-confirmed">{$GLOBAL.userdata.balance.confirmed|number_format:"6"}</span>
              </th>
            </tr>
            <tr>
              <th>Unconfirmed</th>
              <th>
                <span class="label label-warning pull-right bigfont" id="b-unconfirmed">{$GLOBAL.userdata.balance.unconfirmed|number_format:"6"}</span>
              </th>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

