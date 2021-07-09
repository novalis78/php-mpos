<!-- BEGIN login -->
    <div class="login">
      <!-- BEGIN login-cover -->
      <div class="login-cover"></div>
      <!-- END login-cover -->
      <!-- BEGIN login-content -->
      <div class="login-content">
        <!-- BEGIN login-brand -->
        <div class="login-brand">
          <a href="#"><b>Martian</b>Mines</a>
        </div>
        <!-- END login-brand -->
        <h3 class="m-b-20"><span>Sign In</span></h3>
        <!-- BEGIN login-desc -->
        <div class="login-desc m-b-30">
          For your protection, please verify your identity.
        </div>
        <!-- END login-desc -->
        <!-- BEGIN login-form -->
        <form role="form" action="{$smarty.server.SCRIPT_NAME}?page=login" method="post" id="loginForm">
        <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}">
          <div class="form-group">
            <label>Username <span class="text-danger">*</span></label>
            <input class="form-control" placeholder="E-mail" name="username" type="email" autofocus required>
          </div>
          <div class="form-group">
            <label>Password <span class="text-danger">*</span></label>
            <input class="form-control" placeholder="Password" name="password" type="password" value="" required>
          </div>
          <div class="d-flex align-items-center">
            <button type="submit" class="btn btn-primary width-150 btn-rounded">Sign In</button>
            <a href="{$smarty.server.SCRIPT_NAME}?page=password" class="m-l-10">Forgot password?</a>
          </div>

          <center>
        {nocache}
          {if $recaptcha_enabled}
            <div class="g-recaptcha" data-sitekey="{$recaptcha_public_key}"></div>
            <script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>
          {/if}
        {/nocache}
      </center>

        </form>
        <!-- END login-form -->
        <div class="login-desc m-t-30">
          Not a member yet? Register <a href="{$smarty.server.SCRIPT_NAME}?page=register">Here</a>.
        </div>
      </div>
      <!-- END login-content -->
    </div>
    <!-- END login -->

