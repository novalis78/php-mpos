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
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers" class="nav-link active" >WORKERS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions" class="nav-link">TRANSACTIONS</a></li>
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
  <form class="col-lg-3" method="POST" role="form">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="do" value="add">
    <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-plus-square-o fa-fw"></i> Add New Worker
      </div>
        <div class="card-body">
          <div class="form-group">
            <label>Worker Name</label>
            <input class="form-control" type="text" name="username" value="user" size="10" maxlength="20" required>
          </div>
          <div class="form-group">
            <label>Worker Password</label>
            <input class="form-control" type="text" name="password" value="password" size="10" maxlength="20" required>
          </div>
        </div>
      <div class="card-footer">
        <input type="submit" value="Add New Worker" class="btn btn-success btn-sm">
      </div>
    </div>
  </form>

  <div class="col-lg-9">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-gears fa-fw"></i> Worker Configuration
      </div>
      <form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
        <input type="hidden" name="page" value="{$smarty.request.page|escape}">
        <input type="hidden" name="action" value="{$smarty.request.action|escape}">
        <input type="hidden" name="do" value="update">
        <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
        <div class="panel-body no-padding">
          <div class="table-responsive">
          <table class="table">
             <thead>
                <tr>
                  <th class="smallwidth">Worker Login</th>
                  <th class="smallwidth">Worker Password</th>
                  <th class="text-center">Active</th>
                  {if $GLOBAL.config.disable_notifications != 1 && $DISABLE_IDLEWORKERNOTIFICATIONS != 1}<th class="text-center">Monitor</th>{/if}
                  <th class="text-right">Khash/s</th>
                  <th class="text-right">Difficulty</th>
                  <th class="text-center">Action</th>
                </tr>
             </thead>
             <tbody>
               {nocache}
               {section worker $WORKERS}
               {assign var="username" value="."|escape|explode:$WORKERS[worker].username:2} 
               <tr>
                 <td>
                  <div class="input-group input-group-sm clear">
                    <span {if $WORKERS[worker].hashrate > 0}style="color: orange"{/if} class="input-group-addon">{$username.0|escape}.</span>
                    <input type="text" name="data[{$WORKERS[worker].id}][username]" value="{$username.1|escape}" size="10" required class="name" />
                  </div>
                 </td>
                 <td><input class="form-control" type="text" name="data[{$WORKERS[worker].id}][password]" value="{$WORKERS[worker].password|escape}" size="10" required></td>
                 <td class="text-center"><i class="fa fa-{if $WORKERS[worker].hashrate > 0}check{else}times{/if} fa-fw"></i></td>
                 {if $GLOBAL.config.disable_notifications != 1 && $DISABLE_IDLEWORKERNOTIFICATIONS != 1}
                 <td class="text-center">
                   <input type="hidden" name="data[{$WORKERS[worker].id}][monitor]" value="0" />
                   <input type="checkbox" class="switch" data-size="mini"  name="data[{$WORKERS[worker].id}][monitor]" id="data[{$WORKERS[worker].id}][monitor]" value="1" {if $WORKERS[worker].monitor}checked{/if}/>
                 </td>
                 {/if}
                 <td class="text-right">{$WORKERS[worker].hashrate|number_format}</td>
                 <td class="text-right">{$WORKERS[worker].difficulty|number_format:"2"}</td>
                 <td class="text-center"><a href="{$smarty.server.SCRIPT_NAME}?page={$smarty.request.page|escape}&action={$smarty.request.action|escape}&do=delete&id={$WORKERS[worker].id|escape}&ctoken={$CTOKEN|escape|default:""}"><i class="fa fa-trash-o fa-fw"></i></a></td>
               </tr>
               {/section}
               {/nocache}
             </tbody>
            </table>
          </div>
          <div class="card-footer">
            <input type="submit" class="btn btn-success btn-sm" value="Update Workers">
          </div>
        </div>
      </form>
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


