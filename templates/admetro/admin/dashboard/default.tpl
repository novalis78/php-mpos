
<!-- BEGIN #content -->
<div id="content" class="app-content">
<!-- BEGIN page-header -->
<h1 class="page-header">
  Dashboard
</h1>

{nocache}
{include file="admin/dashboard/mpos.tpl"}

{include file="admin/dashboard/user.tpl"}
<div class="row" style="margin-top: 10px;">
{include file="admin/dashboard/registrations.tpl"}
{if $GLOBAL.config.disable_invitations|default:"0" == 0}
  {include file="admin/dashboard/invitation.tpl"}
{/if}
</div>
{/nocache}

</div>