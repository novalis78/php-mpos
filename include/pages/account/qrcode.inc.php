<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

switch($setting->getValue('acl_qrcode')) {
case '0':
  if ($user->isAuthenticated()) {

$email = $_SESSION['USERDATA']['email'];
$default = "http://pool2.marscoin.org/site_assets/admetro/img/user-1.jpg";
$size = 360;
$grav_url = "https://www.gravatar.com/avatar/" . md5( strtolower( trim( $email ) ) ) . "?d=" . urlencode( $default ) . "&s=" . $size;
$smarty->assign('GRAV_URL', $grav_url);


    $smarty->assign("CONTENT", "default.tpl");
  }
  break;
case '1':
  $_SESSION['POPUP'][] = array('CONTENT' => 'Page currently disabled. Please try again later.', 'TYPE' => 'alert alert-danger');



  $smarty->assign("CONTENT", "");
  break;
}
