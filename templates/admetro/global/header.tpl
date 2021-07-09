<ul class="navbar-nav navbar-right">
        <li class="nav-item">
          <a href="#" data-toggle="search-bar" class="nav-link">
            <i class="fa fa-search nav-icon"></i>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="#" data-toggle="dropdown" data-display="static" class="nav-link">
            <i class="far fa-bell nav-icon"></i>
            {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                <span class="nav-label">{$GLOBAL.userdata.lastnotifications|@count|default:"0"}</span>
            {/if}
          </a>
          <ul class="dropdown-menu dropdown-menu-right dropdown-menu-lg pt-0 pb-0">
          {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.lastnotifications|@count|default:"0" != 0}
            {section notification $GLOBAL.userdata.lastnotifications}
                        <li class="dropdown-message">
                            <a href="#">
                                    {if $GLOBAL.userdata.lastnotifications[notification].type == new_block}<div class="icon"><i class="fa fa-th-large fa-fw"></i></div><div class="info"><h4 class="title">New Block<span class="time">{$GLOBAL.userdata.lastnotifications[notification].time|relative_date}</span></h4>
                                    {else if $GLOBAL.userdata.lastnotifications[notification].type == payout}<div class="icon"><i class="fa fa-money fa-fw"></i></div><div class="info"><h4 class="title"> Payout<span class="time">{$GLOBAL.userdata.lastnotifications[notification].time|relative_date}</span></h4>
                                    {else if $GLOBAL.userdata.lastnotifications[notification].type == idle_worker}<div class="icon"><i class="fa fa-desktop fa-fw"></i></div><div class="info"><h4 class="title"> IDLE<span class="time">{$GLOBAL.userdata.lastnotifications[notification].time|relative_date}</span></h4> Worker
                                    {else if $GLOBAL.userdata.lastnotifications[notification].type == success_login}<div class="icon"><i class="fa fa-sign-in fa-fw"></i></div><div class="info"><h4 class="title"> Successful Login<span class="time">{$GLOBAL.userdata.lastnotifications[notification].time|relative_date}</span></h4>
                                    {/if}
                                    <p class="desc">...</p>
                                </div>
                            </a>
                        </li>
                         <li class="divider"></li>
{/section}

                        <li>
                            <a class="text-center" href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications">
                                <strong>See All Notifications</strong>
                                <div class="icon"><i class="fa fa-angle-right"></i></div>
                            </a>
                        </li>

            {/if}
          </ul>
        </li>


        <!--
        <li class="nav-item dropdown">
          <a href="#" data-toggle="dropdown" data-display="static" class="nav-link">
            <i class="fa fa-cog nav-icon"></i>
          </a>
          <ul class="dropdown-menu dropdown-menu-right dropdown-menu-md pt-0 pb-0">
            <li class="dropdown-header">Notifications Settings</li>
            <li class="dropdown-setting">
              <div class="icon"><i class="fa fa-envelope text-muted"></i></div>
              <div class="info">Email</div>
              <div class="option">
                <div class="switcher switcher-success">
                  <input type="checkbox" name="setting_1" id="setting_1" checked />
                  <label for="setting_1"></label>
                </div>
              </div>
            </li>
            <li class="dropdown-setting">
              <div class="icon"><i class="fa fa-desktop text-muted"></i></div>
              <div class="info">Desktop & Mobile</div>
              <div class="option">
                <div class="switcher switcher-success">
                  <input type="checkbox" name="setting_2" id="setting_2" checked />
                  <label for="setting_2"></label>
                </div>
              </div>
            </li>
            <li class="dropdown-setting">
              <div class="icon"><i class="fa fa-comment-alt text-muted"></i></div>
              <div class="info">Text message</div>
              <div class="option">
                <div class="switcher switcher-success">
                  <input type="checkbox" name="setting_3" id="setting_3" />
                  <label for="setting_3"></label>
                </div>
              </div>
            </li>
            <li class="dropdown-header">Privacy Settings</li>
            <li class="dropdown-setting">
              <div class="icon"><i class="fa fa-list-ul text-muted"></i></div>
              <div class="info">Public friends list</div>
              <div class="option">
                <div class="switcher switcher-success">
                  <input type="checkbox" name="setting_4" id="setting_4" />
                  <label for="setting_4"></label>
                </div>
              </div>
            </li>
            <li class="dropdown-setting">
              <div class="icon"><i class="fa fa-user-secret text-muted"></i></div>
              <div class="info">Public profile page</div>
              <div class="option">
                <div class="switcher switcher-success">
                  <input type="checkbox" name="setting_5" id="setting_5" checked />
                  <label for="setting_5"></label>
                </div>
              </div>
            </li>
          </ul>
        </li>
        -->

    <li class="nav-item dropdown">
            <a href="#" data-toggle="dropdown" data-display="static" class="nav-link">
                <span class="d-none d-md-block"><i class="fa fa-user fa-fw"></i> {if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}Guest{/if} <b class="caret"></b></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                <a class="dropdown-item" href="{$smarty.server.SCRIPT_NAME}?page=dashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                <a class="dropdown-item" href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit"><i class="fa fa-gear fa-fw"></i> Settings</a>
                <a class="dropdown-item" href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers"><i class="fa fa-desktop fa-fw"></i> Workers</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{$smarty.server.SCRIPT_NAME}?page=logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                {else}
                <a class="dropdown-item" href="{$smarty.server.SCRIPT_NAME}?page=login"><i class="fa fa-sign-in fa-fw"></i> Login</a>
                <a class="dropdown-item" href="{$smarty.server.SCRIPT_NAME}?page=register"><i class="fa fa-pencil fa-fw"></i> Sign Up</a>
                {/if}
            </div>
        </li>


</ul>
  

 




      <!-- BEGIN navbar-search -->
      <div class="navbar-search">
        <form action="#" method="POST" name="navbar_search_form">
          <div class="form-group">
            <div class="icon"><i class="fa fa-search"></i></div>
            <input type="text" class="form-control" id="header-search" placeholder="Search ..." />
            <div class="icon">
              <a href="#" data-dismiss="search-bar" class="right-icon"><i class="fa fa-times"></i></a>
            </div>
          </div>
        </form>
      </div>
      <!-- END navbar-search -->