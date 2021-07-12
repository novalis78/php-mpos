<script src="site_assets/admetro/js/app.min.js"></script>
<script>
  var zxcvbnPath = "{$PATH}/js/zxcvbn/zxcvbn.js";
</script>
<script type="text/javascript" src="{$PATH}/js/pwcheck.js"></script>


<div class="register">
      <!-- BEGIN register-cover -->
      <div class="register-cover"></div>
      <!-- END register-cover -->
      <!-- BEGIN register-content -->
      <div class="register-content">
        <!-- BEGIN register-brand -->
        <div class="register-brand">
          <a href="#"><b>Martian</b>Mines</a>
        </div>
        <!-- END register-brand -->
        <h3 class="m-b-20"><span>Sign Up</span></h3>
        <p class="m-b-20"></p>
        <!-- BEGIN register-form -->
        <form class="panel panel-info" method="post" role="form">
          <input type="hidden" name="page" value="{$smarty.request.page|escape}">
          {if $smarty.request.token|default:""}
          <input type="hidden" name="token" value="{$smarty.request.token|escape}">
          {/if}
          <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}">
          <input type="hidden" name="action" value="register">
          <!-- BEGIN row -->
          <div class="row row-space-20">
            <div class="col-md-6">
              <div class="form-group">
                <label>Username <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="username" placeholder="Username" value="{$smarty.post.username|escape|default:""}" size="15" maxlength="20" required>
              </div>
              {if $GLOBAL.coinaddresscheck|default:"1"}
              <div class="form-group">
                <label>Coinaddress <span class="text-danger">*</span></label>
                <input type="text" name="coinaddress" placeholder="Coin Address" class="form-control" value="{$smarty.post.coinaddress|escape|default:""}" size="15" required>
              </div>
              {/if}
              <div class="form-group">
                <label>Email Address <span class="text-danger">*</span></label>
                <input type="text" name="email1" placeholder="Email" class="form-control" value="{$smarty.post.email1|escape|default:""}" size="15" required>
              </div>
              <div class="form-group">
                <label>Confirm Email Address <span class="text-danger">*</span></label>
                 <input type="text" class="form-control" name="email2" placeholder="Repeat Email" value="{$smarty.post.email2|escape|default:""}" size="15" required>
              </div>
             
              <div class="form-group">
                <label>Password <span class="text-danger">*</span> (<span id="pw_strength">Strength</span>)</label>
                <input type="password" class="form-control" name="password1" placeholder="Password" value="" size="15" maxlength="100" id="pw_field" required>
              </div>
              <span id="pw_match"></span>
              <div class="form-group">
                <label>Confirm Password <span class="text-danger">*</span> (<span id="pw_strength">Strength</span>)</label>
                <input type="password" class="form-control" name="password2" placeholder="Repeat Password" value="" size="15" maxlength="100" id="pw_field2" required>
              </div>
            </div>

            <div class="form-group">
                <label>PIN / Four digit number. <b>Remember this pin!</b></label>
                <input type="password" class="form-control" name="pin" placeholder="PIN" value="" size="4" maxlength="4" required>
            </div>
            <div class="form-group" style="margin-left: 12px;">
              <label>
                <input type="checkbox" value="1" name="tac" id="tac"> I Accept The <a data-toggle="modal" data-target="#TAC">Terms and Conditions</a>
              </label>
            </div>
        </div>
          <div class="d-flex align-items-center">
             <input type="submit" value="Register" class="btn btn-success btn-sm">
            <span class="m-l-20 text-white-transparent-5">
              Already have an account? &nbsp;
              <a href="{$smarty.server.SCRIPT_NAME}?page=login">Sign In</a>
            </span>
          </div>
        </form>
        <!-- END register-form -->
      </div>
      <!-- END register-content -->
    </div>
    <!-- END register -->



<div class="modal fade" id="TAC" tabindex="-1" role="dialog" aria-labelledby="TACLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="TACLabel">Terms and Conditions</h4>
        </div>
        <div class="modal-body">
          {include file="tac/content.tpl"}
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>

 