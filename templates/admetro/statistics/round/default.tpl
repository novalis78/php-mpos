<!-- BEGIN #content -->
    <div id="content" class="app-content">
      <!-- BEGIN page-header -->
      <h1 class="page-header">
        Statistics <small>round</small>
      </h1>
      <!-- END page-header -->


{if $GLOBAL.config.payout_system == 'pplns'}
   {include file="statistics/round/pplns_block_stats.tpl"}
   {include file="statistics/round/pplns_transactions.tpl"}
	<div class="row">
   {include file="statistics/round/round_shares.tpl"}
   {include file="statistics/round/pplns_round_shares.tpl"}
	</div>
{else if $GLOBAL.config.payout_system == 'prop'}
   {include file="statistics/round/block_stats.tpl"}
   <div class="row" style="margin-top: 10px;">
   {include file="statistics/round/round_shares.tpl"}
   {include file="statistics/round/round_transactions.tpl"}
   </div>
{else}
   <div class="row" style="margin-top: 10px;">
   {include file="statistics/round/block_stats.tpl"}
   {include file="statistics/round/round_shares.tpl"}
   </div>
{/if}


</div>