<!-- BEGIN row -->
      <div class="row">
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats bg-gradient-indigo text-white m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">CURRENT BLOCK</div>
              <div class="widget-stats-value">
                {$NETWORK.block}
              </div>
              <div class="widget-stats-desc">#</div>
            </div>
            <div class="widget-stats-icon">
             <i class="fas fa-cube"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-teal m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">OF EXPECTED SHARES</div>
              <div class="widget-stats-value">
                {$ESTIMATES.percent|number_format:"2"}%
              </div>
              <div class="widget-stats-desc">%</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fa fa-hand-pointer"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-yellow m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title"> Est. Earnings</div>
              <div class="widget-stats-value">
                {$GLOBAL.userdata.estimates.payout|number_format:$PRECISION}
              </div>
              <div class="widget-stats-desc">{$GLOBAL.config.currency}</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-dollar-sign"></i>
            </div>
          </a>
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-orange m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">DIFFICULTY</div>
              <div class="widget-stats-value">
                {$NETWORK.difficulty|number_format:"8"}
              </div>
              <div class="widget-stats-desc">Time</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-square-root-alt"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
      </div>
      <!-- END row -->
