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
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings" class="nav-link "  >EARNINGS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications" class="nav-link " >NOTIFICATIONS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations" class="nav-link " >INVITATIONS</a></li>
          <li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode" class="nav-link active" >QR CODES</a></li>
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
                
                





{if !$GLOBAL.website.api.disabled}
<script type="text/javascript" src="{$PATH}/js/jquery.qrcode.min.js"></script>
<script type="text/javascript">
  {literal}
  $(document).ready(function(){
    $('#qrcodeholder').qrcode({
      text    : "{/literal}|http{if $smarty.server.HTTPS|default:"0" eq 'on'}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=api|{$GLOBAL.userdata.api_key}|{$GLOBAL.userdata.id}|{$GLOBAL.config.currency|upper}|{literal}",
      render    : "canvas",  // 'canvas' or 'table'. Default value is 'canvas'
      background : "#ffffff",
      foreground : "#000000",
      width : 250,
      height: 250 
    });
  });
  {/literal}
</script>
<div class="row">
  <div class="col-lg-4">
    <div class="card panel-info">
      <div class="card-header">
        <i class="fa fa-qrcode fa-fw"></i> API String
      </div>
      <div class="card-body text-center">
        <p>This code will allow you to import the full API string into your mobile application.</p>
        <div id="qrcodeholder"></div>
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











