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
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions" class="nav-link ">TRANSACTIONS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings" class="nav-link active"  >EARNINGS</a></li>
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
                
                


{if $DISABLE_TRANSACTIONSUMMARY|default:"0" != 1}
<div class="row">
  <div class="col-lg-12">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-money fa-fw"></i> Total {$GLOBAL.config.currency} Earning Reports
      </div>
      <div class="card-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="card panel-info">
              <div class="card-header">
                <i class="fa fa-credit-card fa-fw"></i> Summary
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-condensed">
                    <thead>
                      <tr>
                        <th class="col-xs-1"></th>
                        {foreach $SUMMARY as $type=>$total}
                        <th>{$type}</th>
                        {/foreach}
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="col-xs-1">All Time</td>
                        {foreach $SUMMARY as $type=>$total}
                        <td class="right">{$total|number_format:"8"}</td>
                        {/foreach}
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <div class="card panel-info">
              <div class="card-header">
                <i class="fa fa-clock-o fa-fw"></i> Sorted by Time
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-condensed">
                    <thead>
                      <tr>
                        <th class="col-xs-1"></th>
                        <th>Credit</th>
                        <th>Bonus</th>
                        <th>Debit AP</th>
                        <th>Debit MP</th>
                        <th>Donation</th>
                        {if $GLOBAL.fees > 0}
                        <th>Fee</th>
                        {/if}
                        <th>TXFee</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="col-xs-1">Last Hour</th>
                        <td>{$BYTIME.1HourCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1HourBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1HourDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1HourDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1HourDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1HourFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1HourTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Day</th>
                        <td>{$BYTIME.24HourCredit|number_format:"8"}</td>
                        <td>{$BYTIME.24HourBonus|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.24HourFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.24HourTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Week</th>
                        <td>{$BYTIME.1WeekCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1WeekFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1WeekTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Month</th>
                        <td>{$BYTIME.1MonthCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1MonthFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1MonthTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Year</th>
                        <td>{$BYTIME.1YearCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1YearBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1YearDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1YearDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1YearDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1YearFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1YearTXFee|number_format:"8"}</td>
                      </tr>
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
</div>
{/if}






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








