<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
  <meta charset="utf-8" />
  <title>{$GLOBAL.website.title} - {$smarty.request.page|escape|default:"home"|capitalize}</title>
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
  <meta content="" name="description" />
  <meta content="" name="author" />
  
  <!-- ================== BEGIN BASE CSS STYLE ================== -->
   {if $GLOBAL.statistics.analytics.enabled}
  {$GLOBAL.statistics.analytics.code nofilter}
  {/if}
  <link href="site_assets/admetro/css/app.min.css" rel="stylesheet" />
  <script src="site_assets/admetro/js/app.min.js"></script>


  {if $GLOBAL.statistics.analytics.enabled}
  {$GLOBAL.statistics.analytics.code nofilter}
  {/if}
  <link href="{$PATH}/css/bootstrap-switch.min.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/morris/morris-0.5.1.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/timeline/timeline.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/metisMenu/metisMenu.css" rel="stylesheet">
  <link href="{$PATH}/css/sparklines.css" rel="stylesheet">
  {if $GLOBAL.config.website_design|default:"default" != "default"}
  <link href="{$PATH}/css/design/{$GLOBAL.config.website_design}.css" rel="stylesheet">
  {/if}
  
  <script src="{$PATH}/js/jquery.cookie.js"></script>
  <script src="{$PATH}/js/jquery.md5.js"></script>
  <script src="{$PATH}/js/plugins/dataTables/jquery.dataTables.js"></script>
  <script src="{$PATH}/js/plugins/dataTables/dataTables.bootstrap.js"></script>
  <script src="{$PATH}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
  <script src="{$PATH}/js/plugins/raphael-2.1.2.min.js"></script>
  <script src="{$PATH}/js/plugins/morris/morris-0.5.1.min.js"></script>
  <script src="{$PATH}/js/plugins/sparkline/jquery.sparkline.min.js"></script>
  <script src="{$PATH}/js/mpos.js"></script>

</head>
<body>
{if $smarty.session.AUTHENTICATED }
  <div id="app" class="app app-header-fixed app-sidebar-fixed">
    <!-- BEGIN #header -->
    <header id="header" class="app-header">
      <!-- BEGIN navbar-toggle-minify -->
      <button type="button" class="navbar-toggle navbar-toggle-minify" data-click="sidebar-minify">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- END navbar-toggle-minify -->
      <!-- BEGIN navbar-header -->
      <div class="navbar-header">
        <a href="/" class="navbar-brand">
          MartianMines
        </a>
        <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <!-- END navbar-header -->
      {include file="global/header.tpl"}
      
    </header>
    <!-- END #header -->
    
    {include file="global/navigation.tpl"}
    
    

    {if $CONTENT != "empty" && $CONTENT != ""}
      {if file_exists($smarty.current_dir|cat:"/$PAGE/$ACTION/$CONTENT")}
        {include file="$PAGE/$ACTION/$CONTENT"}
      {else}
        Missing template for this page
      {/if}
    {/if}



    
    <!-- BEGIN btn-scroll-top -->
    <a href="#" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
    <!-- END btn-scroll-top -->
  </div>


  
  <!-- ================== BEGIN PAGE LEVEL JS ================== -->
  <script src="site_assets/admetro/js/demo/dashboard.demo.js"></script>
  <!-- ================== END PAGE LEVEL JS ================== -->
{else if $PAGE == "login"}
{include file="login/default.tpl"}
{else if $PAGE == "password"}
{include file="password/default.tpl"}
{else if $PAGE == "change"}
{include file="password/change/default.tpl"}
{else if $PAGE == "register"}
{include file="register/default.tpl"}
{else}
{include file="global/frontpage.tpl"}
{/if}
  

  
</body>
</html>


