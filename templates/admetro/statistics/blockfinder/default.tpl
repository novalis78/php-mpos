<!-- BEGIN #content -->
    <div id="content" class="app-content">
      <!-- BEGIN page-header -->
      <h1 class="page-header">
        Blockfinder <small></small>
      </h1>
      <!-- END page-header -->

<div class="row">
{include file="statistics/blockfinder/finder_top.tpl"}
{if $smarty.session.AUTHENTICATED|default}
{include file="statistics/blockfinder/finder_own.tpl" SHORT=true}
{/if}
</div>

</div>