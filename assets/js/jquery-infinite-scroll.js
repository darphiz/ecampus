    var page = 1;var empty_page = false;var block_request = false;var is_mobile = false;
    if($('#dev').css('display') =='none'){is_mobile = true;}
    if(is_mobile){$(window).scroll(function() {var margin = $(document).height() - $(window).height() - 1900;  
    if ($(window).scrollTop() > margin && empty_page == false && block_request == false) {block_request = true;page += 1;
        $.get('?page=' + page, function(data) {
            if(data == ''){empty_page = true;$('#spinner-2').css('display','none');}
            else {block_request = false;$('.infinite-container').append(data);}});}
    });}
    else{var margin =  $(".overflow-container").height() - 300; $(".overflow-container").scroll(function() {
    if($('.overflow-container').scrollTop() > margin && empty_page == false && block_request == false){block_request = true;page += 1;
        $.get('?page=' + page, function(data) {
            if(data == '') {empty_page = true;$('#spinner-2').css('display','none');}
            else {block_request = false;$('.infinite-container').append(data);}
        });    }});}
