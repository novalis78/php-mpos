<!-- BEGIN #content -->
		<div id="content" class="app-content p-0">
			<!-- BEGIN profile-header -->
			<div class="profile-header">
				<!-- BEGIN profile-header-cover -->
				<div class="profile-header-cover"></div>
				<!-- END profile-header-cover -->
				<!-- BEGIN profile-header-content -->
				<div class="profile-header-content">
					<!-- BEGIN profile-header-img -->
					<div class="profile-header-img">
						<img src="{$GRAV_URL}" alt="" />
					</div>
					<!-- END profile-header-img -->
					<!-- BEGIN profile-header-info -->
					<div class="profile-header-info">
						<h4>{$GLOBAL.userdata.username|escape}</h4>
						<p>Martian Miner</p>
						<a href="#" class="btn btn-xs btn-rounded btn-primary width-100">Edit Profile</a>
					</div>
					<!-- END profile-header-info -->
				</div>
				<!-- END profile-header-content -->
				<!-- BEGIN profile-header-tab -->
				<ul class="profile-header-tab nav nav-tabs">
					<li class="nav-item"><a href="#profile-post" class="nav-link active" data-toggle="tab">ACCOUNT</a></li>
					<li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers" class="nav-link" >WORKERS</a></li>
					<li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions" class="nav-link">TRANSACTIONS</a></li>
					<li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings" class="nav-link" >EARNINGS</a></li>
					<li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications" class="nav-link" >NOTIFICATIONS</a></li>
					<li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations" class="nav-link" >INVITATIONS</a></li>
					<li class="nav-item"><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode" class="nav-link" >QR CODES</a></li>
				</ul>
				<!-- END profile-header-tab -->
			</div>
			<!-- END profile-header -->
			<!-- BEGIN profile-container -->
			<div class="profile-container">
				<!-- BEGIN row -->
				<div class="row row-space-20">
					<!-- BEGIN col-8 -->
					<div class="col-xl-12">
						<!-- BEGIN tab-content -->
						<div class="tab-content p-0">
							<!-- BEGIN tab-pane -->
							<div class="tab-pane fade show active" id="profile-post">
								
								

<div class="row">
{include file="account/edit/detail.tpl"}
{include file="account/edit/password.tpl"}
{include file="account/edit/cashout.tpl"}
{include file="account/edit/resetpin.tpl"}
</div>


							</div>

					
						</div>
						<!-- END tab-content -->
					</div>
					<!-- END col-8 -->
					<!-- BEGIN col-4 -->
				
				</div>
				<!-- END row -->
			</div>
			<!-- END profile-container -->
		</div>
		<!-- END #content -->
		
		<!-- BEGIN btn-scroll-top -->
		<a href="#" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
		<!-- END btn-scroll-top -->
	</div>
	<!-- END #app -->


