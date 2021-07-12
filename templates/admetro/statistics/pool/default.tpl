<!-- BEGIN #content -->
    <div id="content" class="app-content">
      <!-- BEGIN page-header -->
      <h1 class="page-header">
        Statistics <small>pool</small>
      </h1>
      <!-- END page-header -->

<!-- Wrapper -->
<div class="row">
{include file="statistics/pool/contributors_shares.tpl"}
{include file="statistics/pool/contributors_hashrate.tpl"}
</div>

<div class="row" style="margin-top: 10px;">
{include file="statistics/pool/general_stats.tpl"}
{include file="statistics/blocks/small_table.tpl"}
</div>


</div>