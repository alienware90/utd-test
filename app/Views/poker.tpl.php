<?php
    // Return Hand Player 1
    $hand_a = $handsResult['player_1_hand'];
    // Return Hand Player 2
    $hand_b = $handsResult['player_2_hand'];
    // Return Text Result
    $result_txt = $handsResult['result'];

    if(isUserLoggedin()) :
?>

<section id="pokerSection" class="single single-poker single-template">
        <h1 class="title">Poker</h1>
        <div id="messageBox" class="alert alert-primary" data-vis="hidden" role="alert">
            <?=$result_txt?>
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-6">
                <h2 class="subtitle">Hand - <strong><?=getUsername()?></strong></h2>
                <!-- <label>Player Card</label> -->
                <div class="hand hand_p1"><?=$hand_a;?></div>
            </div>
            <div class="col-xs-12 col-md-6"> 
                <h2 class="subtitle">Hand - <strong>Player 2</strong></h2>
                <!-- <label>Player 2</label> -->
                <div class="hand hand_p2"><?=$hand_b;?></div>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="button-container">
                    <a href="<?=basePath()?>/poker?action=reload" class="btn btn-outline-primary">New Hand</a>
                    <a id="showHand" href="#!" class="btn btn-outline-primary">Show Hand</a>
                </div>
            </div>
        </div>
        <!-- End Row -->

</section>

<?php else : 

    redirect();

endif; 