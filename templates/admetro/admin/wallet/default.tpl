
<!-- BEGIN #content -->
<div id="content" class="app-content">
  <!-- BEGIN page-header -->
  <h1 class="page-header">
    Wallet
  </h1>

<div class="row">
  {include file="admin/wallet/balance.tpl"}
  {include file="admin/wallet/status.tpl"}

</div>
<div class="row" style="margin-top: 10px;">
  {include file="admin/wallet/peers.tpl"}
  {include file="admin/wallet/transactions.tpl"}
</div>
<div class="row" style="margin-top: 10px;">
  {include file="admin/wallet/accounts.tpl"}
</div>

</div>