<div class="filter-container">
    <?=$categories?>
</div>

<div class="row">
    <?php foreach($casinos as $casino ) : 
        $casino_bk = (empty($casino['background']) ? '' : $casino['background']);
    ?>
        <div class="col-casino col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3 col-filter active" data-cat="<?=$casino['categories'][0]?>">
            <div class="card col-casino--item">
                <img src="<?=$casino['icon_2']?>" class="col-casino--img img-fluid" alt="<?=$casino['name']?>">
                <div data-bk="<?=$casino_bk?>" class="col-casino--bk"></div>
                <label class="col-casino--name"><?=$casino['name']?></label>
                <label class="col-casino--provider"><?=$casino['provider_title']?></label>
                <!-- <a class="btn btn-primary col-casino--btn" href="<?//=basePath().'/'.$casino['id']?>">Play Now</a> -->
                <button type="button" class="btn btn-primary btn-modal col-casino--btn" data-toggle="modal" data-target="#modalGame">Play Now</button>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<!-- Modal Games -->
<div class="modal modal-game fade" id="modalGame" tabindex="-1" role="dialog" aria-labelledby="modalGameLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalGameLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="modal-game--iframe">Here the iframe</div>
       <button class="btn btn-primary btn-play">Play</button>
      </div>
    </div>
  </div>
</div>