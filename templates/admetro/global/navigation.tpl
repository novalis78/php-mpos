
    <sidebar id="sidebar" class="app-sidebar">
   
      <div data-scrollbar="true" data-height="100%">
    
        <ul class="nav">

          <li class="nav-profile">

            <div class="profile-img">

              <img src="https://via.placeholder.com/60x60" />

            </div>

            <div class="profile-info">
              <h4><i class="fa fa-user fa-fw"></i> {if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}Guest{/if} </h4>
            </div>
          </li>
          <li class="nav-divider"></li>
          <li class="nav-header">Navigation</li>
                  
                    <li {if $smarty.get.page|default:"0" eq ""}class="active"{/if}>
                        <a href="{$smarty.server.SCRIPT_NAME}">
                          <span class="nav-icon"><i class="fa fa-home fa-fw bg-gradient-red text-white"></i></span>
                          <span class="nav-text">Home</span>
                        </a>
                    </li>
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                    <li {if $smarty.get.page|default:"0" eq "dashboard"}class="active"{/if} >
                        <a href="{$smarty.server.SCRIPT_NAME}?page=dashboard">
                          <span class="nav-icon"><i class="fas fa-tachometer-alt fa-fw bg-gradient-orange text-white"></i></span>
                          <span class="nav-text">Dashboard</span>
                        </a>
                    </li>

                    <li class="has-sub" {if $smarty.get.page|default:"0" eq "account"}class="active"{/if}>
                        <a href="#">
                          <span class="nav-icon"><i class="fa fa-user-md fa-fw bg-gradient-green text-white"></i></span>
                          <span class="nav-text">My Account</span>
                          <span class="nav-caret"><b class="caret"></b></span>
                        </a>
                        <ul class="nav-submenu">
                          <li>
                              <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit">
                              <span class="nav-icon"><i class="fa fa-edit fa-fw"></i> </span>
                              <span class="nav-text"> Edit Account </span>
                            </a>
                          </li>
                          <li>
                            <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">
                            <span class="nav-icon"><i class="fa fa-desktop fa-fw"></i></span> 
                            <span class="nav-text">My Workers  </span></a>
                          </li>
                          <li>
                            <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions">
                              <span class="nav-icon"><i class="fa fa-credit-card fa-fw"></i></span> 
                              <span class="nav-text">Transactions</span>
                            </a>
                          </li>
                          {if !$GLOBAL.config.disable_transactionsummary}
                            <li>
                              <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings">
                                <span class="nav-icon"><i class="fas fa-dollar-sign fa-fw"></i></span>
                                <span class="nav-text">Earnings</span>
                              </a>
                            </li>{/if}
                          {if !$GLOBAL.config.disable_notifications}
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications">
                              <span class="nav-icon"><i class="fa fa-bullhorn fa-fw"></i></span>
                              <span class="nav-text"> Notifications</span>
                            </a></li>{/if}
                          {if !$GLOBAL.config.disable_invitations}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations">
                            <span class="nav-icon"><i class="fa fa-users fa-fw"></i></span> 
                            <span class="nav-text"> Invitations</span></a></li>{/if}
                          {if !$GLOBAL.acl.qrcode}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode">
                            <span class="nav-icon"><i class="fa fa-qrcode fa-fw"></i></span> 
                            <span class="nav-text"> QR Codes</span></a></li>{/if}
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
                    <li class="has-sub" {if $smarty.get.page|default:"0" eq "admin"}class="active"{/if}>
                        <a href="#">
                          <span class="nav-icon"><i class="bg-gradient-orange text-white fa fa-wrench fa-fw"></i></span>
                          <span class="nav-text"> Admin Panel</span>
                          <span class="nav-caret"><b class="caret"></b></span>
                        <ul class="nav-submenu">
                          <li class="has-sub" {if $smarty.get.action|default:"0" eq "dashboard" || $smarty.get.action|default:"0" eq "monitoring" || $smarty.get.action|default:"0" eq "settings" || $smarty.get.action|default:"0" eq "setup"}class="active"{/if}>
                            <a href="#">
                              <span class="nav-icon"><i class="fas fa-cogs fa-fw"></i></span> 
                              <span class="nav-text"> System</span>
                              <span class="nav-caret"><b class="caret"></b></span>
                            <ul class="nav-submenu">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=setup">
                                <span class="nav-icon"><i class="fa fa-book fa-fw"></i></span>
                                <span class="nav-text"> Setup</span>
                                </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=dashboard">
                                <span class="nav-icon"><i class="fas fa-tachometer-alt fa-fw"></i></span> 
                                <span class="nav-text"> Dashboard</span>
                                </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=monitoring">
                                  <span class="nav-icon"><i class="fas fa-digital-tachograph fa-fw"></i></span>
                                  <span class="nav-text"> Monitoring</span>
                                </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=settings">
                                <span class="nav-icon"><i class="fas fa-cogs fa-fw"></i></span>
                                <span class="nav-text"> Settings</span>
                                </a></li>
                            </ul>
                          </li>
                          <li class="has-sub" {if $smarty.get.action|default:"0" eq "wallet" || $smarty.get.action|default:"0" eq "transactions"}class="active"{/if}>
                            <a href="#">
                              <span class="nav-icon"><i class="fas fa-dollar-sign fa-fw"></i></span> 
                              <span class="nav-text"> Funds</span>
                              <span class="nav-caret"><b class="caret"></b></span>
                            </a>
                            <ul class="nav-submenu">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=wallet">
                                <span class="nav-icon"><i class="fas fa-wallet fa-fw"></i></span> 
                                <span class="nav-text"> Wallet Info</span>
                              </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=transactions">
                                <span class="nav-icon"><i class="fa fa-tasks fa-fw"></i></span>
                                <span class="nav-text"> Transactions</span>
                              </a></li>
                            </ul>
                          </li>
                          <li class="has-sub" {if $smarty.get.action|default:"0" eq "news" || $smarty.get.action|default:"0" eq "newsletter"}class="active"{/if}>
                            <a href="#">
                              <span class="nav-icon"><i class="fa fa-info fa-fw"></i></span>
                              <span class="nav-text"> News</span>
                              <span class="nav-caret"><b class="caret"></b></span>
                             </a>
                                <ul class="nav-submenu">
                                  <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=news">
                                    <span class="nav-icon"><i class="fa fa-list-alt fa-fw"></i></span>
                                    <span class="nav-text"> Site News</span>
                                  </a></li>
                                  <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=newsletter">
                                    <span class="nav-icon"><i class="fa fa-list-alt fa-fw"></i></span>
                                    <span class="nav-text"> Newsletter</span>
                                  </a></li>
                                </ul>
                          </li>
                          <li class="has-sub" {if $smarty.get.action|default:"0" eq "user" || $smarty.get.action|default:"0" eq "reports" || $smarty.get.action|default:"0" eq "registrations" || $smarty.get.action|default:"0" eq "invitations" || $smarty.get.action|default:"0" eq "poolworkers"}class="active"{/if}>
                            <a href="#">
                              <span class="nav-icon"><i class="fa fa-users fa-fw"></i></span>
                              <span class="nav-text"> Users</span>
                               <span class="nav-caret"><b class="caret"></b></span>
                            </a>
                            <ul class="nav-submenu">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=user">
                                <span class="nav-icon"><i class="fa fa-user fa-fw"></i></span>
                                <span class="nav-text"> User Info</span>
                                </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=reports">
                                <span class="nav-icon"><i class="fa fa-list-ol fa-fw"></i></span>
                                <span class="nav-text"> Reports</span>
                                </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=registrations">
                               <span class="nav-icon"><i class="fas fa-pen-square fa-fw"></i></span> 
                                <span class="nav-text"> Registrations</span>
                              </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=invitations">
                                <span class="nav-icon"><i class="fa fa-users fa-fw"></i></span>
                                <span class="nav-text"> Invitations</span>
                                </a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=poolworkers">
                                <span class="nav-icon"><i class="fa fa-desktop fa-fw"></i></span>
                                <span class="nav-text"> Pool Workers</span></a></li>
                            </ul>
                          </li>
                        </ul>
                    </li>
                    {/if}
                    {if ($GLOBAL.acl.statistics.loggedin|default:"0" == 0 && ($smarty.session.AUTHENTICATED|default:"0" == 0 OR $smarty.session.AUTHENTICATED|default:"0" == 1)) OR ($GLOBAL.acl.statistics.loggedin|default:"0" == 1 && $smarty.session.AUTHENTICATED|default:"0" == 1)}
                    <li class="has-sub" {if $smarty.get.page|default:"0" eq "statistics"}class="active"{/if}>
                        <a href="#">
                          <span class="nav-icon"><i class="bg-gradient-purple text-white fas fa-chart-pie fa-fw"></i></span>
                          <span class="nav-text"> Statistics</span>
                          <span class="nav-caret"><b class="caret"></b></span>
                        <ul class="nav-submenu">
                          {acl_check page='statistics' action='pool' name='<i class="fa fa-align-left fa-fw"></i> Pool' acl=$GLOBAL.acl.pool.statistics fallback='page=statistics'}
                          {acl_check page='statistics' action='blocks' name='<i class="fa fa-th-large fa-fw"></i> Blocks' acl=$GLOBAL.acl.block.statistics}
                          {acl_check page='statistics' action='round' name='<i class="fa fa-refresh fa-fw"></i> Round' acl=$GLOBAL.acl.round.statistics}
                          {acl_check page='statistics' action='blockfinder' name='<i class="fa fa-search fa-fw"></i> Blockfinder' acl=$GLOBAL.acl.blockfinder.statistics}
                          {acl_check page='statistics' action='uptime' name='<i class="fa fa-clock-o fa-fw"></i> Uptime' acl=$GLOBAL.acl.uptime.statistics}
                          {acl_check page='statistics' action='graphs' name='<i class="fa fa-signal fa-fw"></i> Graphs' acl=$GLOBAL.acl.graphs.statistics}
                          {acl_check page='statistics' action='donors' name='<i class="fa fa-bitbucket fa-fw"></i> Donors' acl=$GLOBAL.acl.donors.page}
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}
                    {if ($GLOBAL.acl.help.loggedin|default:"0" == 0 && ($smarty.session.AUTHENTICATED|default:"0" == 0 OR $smarty.session.AUTHENTICATED|default:"0" == 1)) OR ($GLOBAL.acl.help.loggedin|default:"0" == 1 && $smarty.session.AUTHENTICATED|default:"0" == 1)}
                    <li class="has-sub" {if $smarty.get.page|default:"0" eq "gettingstarted" || $smarty.get.page|default:"0" eq "about"}class="active"{/if}>
                        <a href="#">
                          <span class="nav-icon"><i class="bg-gradient-blue text-white fa fa-question fa-fw"></i></span>
                          <span class="nav-text"> Help</span>
                          <span class="nav-caret"><b class="caret"></b></span>
                        <ul class="nav-submenu">
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted">
                            <span class="nav-icon"><i class="fa fa-question fa-fw"></i></span>
                            <span class="nav-text"> Getting Started</span>
                          </a></li>
                          {acl_check page='about' action='pool' name='<i class="fa fa-info fa-fw"></i> About' acl=$GLOBAL.acl.about.page}
                          {acl_check page='about' action='chat' name='<i class="fa fa-comments-o fa-fw"></i> Web Chat' acl=$GLOBAL.acl.chat.page}
                          {acl_check page='about' action='moot' name='<i class="fa fa-ticket fa-fw"></i> Forum' acl=$GLOBAL.acl.moot.forum}
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}

                    <li >
                        <a href="{$smarty.server.SCRIPT_NAME}?page=dashboard">
                          <span class="nav-icon"><i class="fas fa-sign-out-alt fa-fw "></i></span>
                          <span class="nav-text">Logout</span>
                        </a>
                    </li>

                    
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=tac">
                      <span class="nav-icon"><i class="fa fa-book fa-fw"></i></span>
                      <span class="nav-text"> Terms and Conditions</span>
                      </a>
                        
                    </li>


          <li class="nav-divider"></li>
          <li class="nav-copyright">&copy; <?=date('Y')?> The Marscoin Foundation</li>
        </ul>
        <!-- END nav -->
      </div>
      <!-- END scrollbar -->
    </sidebar>
    <!-- END #sidebar -->     

