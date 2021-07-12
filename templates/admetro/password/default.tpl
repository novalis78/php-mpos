 <div class="login">
      <!-- BEGIN login-cover -->
      <div class="login-cover"></div>
      <!-- END login-cover -->
      <!-- BEGIN login-content -->
      <div class="login-content">
        <!-- BEGIN login-brand -->
        <div class="login-brand">
          <a href="/"><b>Martian</b>Mines</a>
        </div>
        <!-- END login-brand -->
        <h3 class="m-b-20"><span>Password reset</span></h3>
        <!-- BEGIN login-desc -->
        <div class="login-desc">
         If you have an email set for your account, enter your username to get your password reset.
        </div>
 

  {nocache}
    {if is_array($smarty.session.POPUP|default)}
      {section popup $smarty.session.POPUP}
      <div class="{if $smarty.session.POPUP[popup].DISMISS|default:"" == "yes"}alert-dismissable {/if} {$smarty.session.POPUP[popup].TYPE|default:"alert alert-info"} {if $smarty.session.POPUP[popup].ID|default:"static" == "static" AND $GLOBAL.website.notificationshide == 1}autohide{/if}" id="{$smarty.session.POPUP[popup].ID|default:"static"}">
        {if $smarty.session.POPUP[popup].DISMISS|default:"no" == "yes"}
        <button id="{$smarty.session.POPUP[popup].ID|default:"static"}" type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {/if}
        {if $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-info"}
        <span class="glyphicon glyphicon-info-sign">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-warning"}
        <span class="glyphicon glyphicon-info-sign">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-danger"}
        <span class="glyphicon glyphicon-remove-circle">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-success"}
        <span class="glyphicon glyphicon-ok-circle">&nbsp;</span>
        {/if}
        {$smarty.session.POPUP[popup].CONTENT nofilter}
      </div>
      {/section}
    {/if}
    {/nocache}


      <div class="row" style="margin-left: 3px;">
        <form role="form" method="POST">
          <input type="hidden" name="page" value="password">
          <input type="hidden" name="action" value="reset">
          <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />

              <fieldset>
              <div class="">
                  <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                  <input     style="width: 500px;" class="form-control" placeholder="Username or E-mail" name="username" type="text" maxlength="100" autofocus required>
                </div>
                <div class="d-flex align-items-center" style="margin-top: 10px;">
                  <input type="submit" class="btn btn-success btn-sm" value="Reset" >
                </div>
              </fieldset>
              
        </form>
      </div>


    </div>
    <!-- END login -->




