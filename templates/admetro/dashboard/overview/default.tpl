

 <div class="row">
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats bg-gradient-blue text-white m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">MY HASHRATE</div>
              <div class="widget-stats-value" id="b-hashrate">
                {$GLOBAL.userdata.hashrate|number_format:"2"}
              </div>
              <div class="widget-stats-desc">{$GLOBAL.hashunits.personal}</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-hashtag"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-purple m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">POOL HASHRATE</div>
              <div class="widget-stats-value"   id="b-poolhashrate">
                {$GLOBAL.hashrate|number_format:"2"}
              </div>
              <div class="widget-stats-desc">{$GLOBAL.hashunits.pool}</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-swimming-pool"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-pink m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">POOL WORKERS</div>
              <div class="widget-stats-value" id="b-poolworkers">
               {$GLOBAL.workers}
              </div>
              <div class="widget-stats-desc">#</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-briefcase"></i>
            </div>
          </a>
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-orange m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">NETWORK HASHRATE</div>
              <div class="widget-stats-value" id="b-nethashrate">
               {$GLOBAL.nethashrate} || {if $GLOBAL.nethashrate > 0}{$GLOBAL.nethashrate|number_format:"2"}{else}n/a{/if}
              </div>
              <div class="widget-stats-desc">{$GLOBAL.hashunits.network}</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-network-wired"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
      </div>
      <!-- END row -->