<!-- BEGIN #content -->
    <div id="content" class="app-content p-0">
      <!-- BEGIN profile-header -->
      <div class="profile-header">
        <!-- BEGIN profile-header-cover -->
        <div class="profile-header-cover"></div>
        <!-- END profile-header-cover -->
        <!-- BEGIN profile-header-content -->
        <div class="profile-header-content">
          <!-- BEGIN profile-header-img -->
          <div class="profile-header-img">
            <img src="{$GRAV_URL}" alt="" />
          </div>
          <!-- END profile-header-img -->
          <!-- BEGIN profile-header-info -->
          <div class="profile-header-info">
            <h4>{$GLOBAL.userdata.username|escape}</h4>
            <p>Martian Miner</p>
          </div>
          <!-- END profile-header-info -->
        </div>
        <!-- END profile-header-content -->
        <!-- BEGIN profile-header-tab -->
        <ul class="profile-header-tab nav nav-tabs">
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit" class="nav-link " >ACCOUNT</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers" class="nav-link " >WORKERS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions" class="nav-link active">TRANSACTIONS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings" class="nav-link" >EARNINGS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications" class="nav-link" >NOTIFICATIONS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations" class="nav-link" >INVITATIONS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode" class="nav-link" >QR CODES</a></li>
        </ul>
        <!-- END profile-header-tab -->
      </div>
      <!-- END profile-header -->
      <!-- BEGIN profile-container -->
      <div class="profile-container">
        <!-- BEGIN row -->
        <div class="row row-space-20">
          <!-- BEGIN col-8 -->
          <div class="col-xl-12">
            <!-- BEGIN tab-content -->
            <div class="tab-content p-0">
              <!-- BEGIN tab-pane -->
              <div class="tab-pane fade show active" id="profile-post">
                
                

<div class="row">
  <form class="col-lg-3" role="form">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-search fa-fw"></i> Transaction Filter
      </div>
      <div class="card-body">
            <ul class="pager">
              <li class="previous {if $smarty.get.start|default:"0" <= 0}disabled{/if}">
                <a href="{if $smarty.get.start|default:"0" <= 0}#{else}{$smarty.server.SCRIPT_NAME}?page={$smarty.request.page|escape}&action={$smarty.request.action|escape}&start={$smarty.request.start|escape|default:"0" - $LIMIT}{if $FILTERS|default:""}{$FILTERS}{/if}{/if}">&larr; Prev</a>
              </li>
              <li class="next">
                <a href="{$smarty.server.SCRIPT_NAME}?page={$smarty.request.page|escape}&action={$smarty.request.action|escape}&start={$smarty.request.start|escape|default:"0" + $LIMIT}{if $FILTERS|default:""}{$FILTERS}{/if}">Next &rarr;</a>
              </li>
            </ul>
            <div class="form-group">
              <label>Type</label>
              {html_options class="form-control select-mini" name="filter[type]" options=$TRANSACTIONTYPES selected=$smarty.request.filter.type|default:""}
            </div>
            <div class="form-group">
              <label>Status</label>
              {html_options class="form-control select-mini" name="filter[status]" options=$TXSTATUS selected=$smarty.request.filter.status|default:""}
            </div>
      </div>
      <div class="panel-footer">
        <input type="submit" value="Filter" class="btn btn-success btn-sm">
      </div>
    </div>
  </form>

  <div class="col-lg-9">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fas fa-clock fa-fw"></i> Transaction History
      </div>
      <div class="card-body no-padding">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed">
            <thead>
              <tr>
                <th class="h6">ID</th>
                <th class="h6">Date</th>
                <th class="h6">TX Type</th>
                <th class="h6">Status</th>
                <th class="h6">Payment Address</th>
                <th class="h6">TX #</th>
                <th class="h6">Block #</th>
                <th class="h6">Amount</th>
              </tr>
            </thead>
            <tbody>
{section transaction $TRANSACTIONS}
              <tr>
                <td>{$TRANSACTIONS[transaction].id}</td>
                <td>{$TRANSACTIONS[transaction].timestamp}</td>
                <td>{$TRANSACTIONS[transaction].type}</td>
                <td>
                  {if $TRANSACTIONS[transaction].type == 'Credit_PPS' OR
                  $TRANSACTIONS[transaction].type == 'Fee_PPS' OR
                  $TRANSACTIONS[transaction].type == 'Donation_PPS' OR
                  $TRANSACTIONS[transaction].type == 'Debit_MP' OR
                  $TRANSACTIONS[transaction].type == 'Debit_AP' OR
                  $TRANSACTIONS[transaction].type == 'TXFee' OR
                  $TRANSACTIONS[transaction].confirmations >= $GLOBAL.confirmations
                  }
                  <span class="label label-success">Confirmed</span>
                  {else if $TRANSACTIONS[transaction].confirmations == -1}
                  <span class="label label-danger">Orphaned</span>
                  {else}
                  <span class="label label-warning">Unconfirmed</span>
                  {/if}
                </td>
                <td><a href="#" onClick="alert('{$TRANSACTIONS[transaction].coin_address|escape}')">{$TRANSACTIONS[transaction].coin_address|truncate:20:"...":true:true}</a></td>
                {if ! $GLOBAL.website.transactionexplorer.disabled}
                <td><a href="{$GLOBAL.website.transactionexplorer.url}{$TRANSACTIONS[transaction].txid|escape}" title="{$TRANSACTIONS[transaction].txid|escape}" target="_blank">{$TRANSACTIONS[transaction].txid|truncate:20:"...":true:true}</a></td>
                {else}
                <td><a href="#" onClick="alert('{$TRANSACTIONS[transaction].txid|escape}')" title="{$TRANSACTIONS[transaction].txid|escape}">{$TRANSACTIONS[transaction].txid|truncate:20:"...":true:true}</a></td>
                {/if}
                <td>{if $TRANSACTIONS[transaction].height == 0}n/a{else}<a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$TRANSACTIONS[transaction].height}">{$TRANSACTIONS[transaction].height}</a>{/if}</td>
                <td><font color="{if $TRANSACTIONS[transaction].type == 'Credit' or $TRANSACTIONS[transaction].type == 'Credit_PPS' or $TRANSACTIONS[transaction].type == 'Bonus'}green{else}red{/if}">{$TRANSACTIONS[transaction].amount|number_format:"8"}</td>
              </tr>
{/section}
            </tbody>
          </table>
        </div>
      </div>
      <div class="card-footer">
        <h6><b>Debit_AP</b> = Auto Threshold Payment, <b>Debit_MP</b> = Manual Payment, <b>Donation</b> = Donation, <b>Fee</b> = Pool Fees (if applicable)</h6>
      </div>
    </div>
  </div>
</div>



              </div>

          
            </div>
            <!-- END tab-content -->
          </div>
          <!-- END col-8 -->
          <!-- BEGIN col-4 -->
        
        </div>
        <!-- END row -->
      </div>
      <!-- END profile-container -->
    </div>
    <!-- END #content -->
    
    <!-- BEGIN btn-scroll-top -->
    <a href="#" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
    <!-- END btn-scroll-top -->
  </div>
  <!-- END #app -->






