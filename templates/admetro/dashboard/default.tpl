{if $smarty.session.AUTHENTICATED|default}
<script src="{$PATH}/js/plugins/date.format.js"></script>
<script src="{$PATH}/js/plugins/soundjs-0.6.0.min.js"></script>


          {* Load our payout system so we can load some payout specific templates *}
          {assign var=PAYOUT_SYSTEM value=$GLOBAL.config.payout_system}
          {include file="dashboard/overview/default.tpl"}
          {include file="dashboard/round_statistics/$PAYOUT_SYSTEM/default.tpl"}

<div class="row">
  <div class="col-xl-4 col-md-6">
          {include file="dashboard/round_statistics/$PAYOUT_SYSTEM/shares.tpl"}
  </div>
  <div class="col-xl-4 col-md-6">
          {include file="dashboard/account_data/default.tpl"}
  </div>
  <div class="col-xl-4 col-md-6">
          {if !$DISABLED_API}
          {include file="dashboard/worker_information/default.tpl"}
          {/if}
  </div>

</div>
<div class="row">
    <div class="col-xl-12 col-md-12">
          {include file="dashboard/blocks/default.tpl"}
    </div>   
</div>          

  {* Include our JS libraries, we allow a live updating JS and a static one *}
  {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  {include file="dashboard/js/api.tpl"}
  {else}
  {include file="dashboard/js/static.tpl"}
  {/if}
{/if}


