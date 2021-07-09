<!-- BEGIN row -->
      <div class="row">
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats bg-gradient-pink text-white m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">{$GLOBAL.config.currency} 1 Hour Estimated Earnings</div>
              <div class="widget-stats-value">
                {$GLOBAL.userdata.estimates.hours1|number_format:$PRECISION}
              </div>
              <div class="widget-stats-desc">#</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-dollar-sign"></i>
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
              <div class="widget-stats-title">{$GLOBAL.config.currency} 24 Hour Estimated Earnings</div>
              <div class="widget-stats-value">
                {$GLOBAL.userdata.estimates.hours24|number_format:$PRECISION}
              </div>
              <div class="widget-stats-desc">%</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-dollar-sign"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-indigo m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">PPS</div>
              <div class="widget-stats-value">
                {$GLOBAL.ppsvalue}
              </div>
              <div class="widget-stats-desc">#</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fa fa-user-astronaut"></i>
            </div>
          </a>
        </div>
        <!-- END col-3 -->
        <!-- BEGIN col-3 -->
        <div class="col-xl-3 col-sm-6">
          <!-- BEGIN widget -->
          <a href="#" class="widget-stats widget-stats-inverse bg-gradient-yellow m-b-15">
            <div class="widget-stats-info">
              <div class="widget-stats-title">UNPAID DIFFICULTY SHARES</div>
              <div class="widget-stats-value">
               {$GLOBAL.userdata.pps.unpaidshares}
              </div>
              <div class="widget-stats-desc">Time</div>
            </div>
            <div class="widget-stats-icon">
              <i class="fas fa-certificate"></i>
            </div>
          </a>
          <!-- END widget -->
        </div>
        <!-- END col-3 -->
      </div>
      <!-- END row -->
