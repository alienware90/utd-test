$(document).ready(function() {

    // Casino Script
    if($('#catFilter')) {

        $('#catFilter li a').click(function(e) {
            e.preventDefault();

            var itm = $('.col-casino.col-filter'),
            id = $(this).attr('href'),
            id = id.replace('#',''),
            itm_cat = $(".col-casino.col-filter[data-cat='"+ id + "']");

            $('#catFilter li a').removeClass('active');
            $(this).addClass('active');
    
            if(id === 'all') {
                itm.addClass('active');
            } else {
                itm.removeClass('active');
                itm_cat.addClass('active');
            }
    
        });

        $('.col-casino--btn.btn-modal').click(function(e) { 
            e.preventDefault();
            var $bk_img = $(this).closest('.col-casino--item').find('.col-casino--bk').attr('data-bk'),
            $casino_title = $(this).closest('.col-casino--item').find('.col-casino--name').text();
            
            $('.modal').css('background-image', 'url('+$bk_img+'');
            $('.modal .modal-title').empty();
            $('.modal .modal-title').append($casino_title);
        });
    } // End Casino 

    // Poker Script
    if($('#pokerSection').length) {
        var $hand_a = $('.hand_p1').html(),
        $hand_a =  $hand_a.match(/..?/g),
        $hand_b = $('.hand_p2').html(),
        $hand_b =  $hand_b.match(/..?/g);

        // Player 1 Cards
        var $htmlP1 = '<ul class="hands_list active">';

        for(i = 0; i < $hand_a.length; i++) {
            $htmlP1 += '<li class="card_p '+ $hand_a[i].substr(1) + ' animated flipInY delay-'+ i +'s"><div class="card-inner"><div class="card-front"></div><div class="card-back">' + $hand_a[i].slice(0,-1) + '</div></div></li>';
        }

        $htmlP1 += '</ul>';

        // Player 2 Cards
        var $htmlP2 = '<ul class="hands_list">';

        for(i = 0; i < $hand_b.length; i++) {
            $htmlP2 += '<li class="card_p '+ $hand_b[i].substr(1) + ' animated flipInY delay-'+ i +'s"><div class="card-inner"><div class="card-front"></div><div class="card-back">' + $hand_b[i].slice(0,-1) + '</div></div></li>';
        }

        $htmlP2 += '</ul>';

        $('.hand_p1, .hand_p2').empty();
        $($htmlP1).appendTo('.hand_p1');
        $($htmlP2).appendTo('.hand_p2');


        $('#showHand').click(function(a) {
            a.preventDefault();
            $(this).addClass('disabled');
            $('#messageBox').attr('data-vis','visible');
            $('.hand.hand_p2 .hands_list').toggleClass('active');
        });

    } // End Poker

});