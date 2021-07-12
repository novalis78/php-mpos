    <div id="content" class="app-content">
      <!-- BEGIN page-header -->
      <h1 class="page-header">
        Donations <small></small>
      </h1>
      <!-- END page-header -->



 <div class="row">
    <div class="col-lg-12">
      <div class="card panel-info">
        <div class="card-header">
          Getting Started Guide
        </div>
        <div class="card-body">
        

    <p>1. <strong>Buy an ASIC Miner for scrypt mining</strong></p>
      <ul>

        <li><em>Antminer L3+</em> <a href="https://minerstat.com/hardware/antminer-l3plus" target="_blank">Learn more</a></li>
        <li><em>Antminer L7</em> <a href="https://minerstat.com/hardware/antminer-l7" target="_blank">Learn more</a></li>
        <li><em>Futurebit Apollo LTC Pod</em> <a href="https://shop.futurebit.io/products/apollo-ltc-pod-asic-miner-for-scrypt-algorithm-cryptocurrencies" target="_blank">Learn more</a></li>
        <li><em>Innosilicon A6+ LTC Master</em> <a href="https://minerstat.com/hardware/innosilicon-a6-plus-ltc-master" target="_blank">Learn more</a></li>
        <li><em>Goldshell LT5</em> <a href="https://minerstat.com/hardware/goldshell-lt5" target="_blank">Learn more</a></li>
        <li><em>Goldshell X6S</em> <a href="https://minerstat.com/hardware/goldshell-x6s" target="_blank">Learn more</a></li>
        <li><em>Goldshell X5S</em> <a href="https://minerstat.com/hardware/goldshell-x5s" target="_blank">Learn more</a></li>
        <li><em>Innosilicon A6 LTC Master</em> <a href="https://minerstat.com/hardware/innosilicon-a6-ltc-master" target="_blank">Learn more</a></li>
        <li><em>Goldshell X5</em> <a href="https://minerstat.com/hardware/goldshell-x5" target="_blank">Learn more</a></li>
        <li><em>HyperBit BW L21</em> <a href="https://minerstat.com/hardware/hyperbit-bw-l21" target="_blank">Learn more</a></li>

      </ul>
  
    <p>2. <strong>Configure your miner.</strong></p>
      <p>Use the following connection string</p>
      
      <pre>{if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if} stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} YOURPOOLLOGINUSERNAME.YOURWORKERNAME WORKERPASS</pre>
      
      <br />
	  
    <p>3. <strong>Create a Marscoin address to receive payments.</strong></p>
      <ul>
        <li> Downloading the client &amp; block chain: 	Download the Marscoin client from <a href="https://www.marscoin.org/" target="_blank">here</a>.
          <p>Generate a new address and input it on your account page to receive payments.</p>
        </li>
      </ul>
    </li>

        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>


</div>