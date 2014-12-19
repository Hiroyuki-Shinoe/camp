$(function(){

    console.log(1);
    
    $('.big_category_1').click(function(){
        console.log(123);
        $('.sidebar').hide();
        $('.nav-top').children('li').hide(); 
        $('.category_1').show();
    });

    $('.big_category_2').click(function(){
        $('.sidebar').hide();
        $('.nav-top').children('li').hide();
        $('.category_2').show();
    });

    $('.big_category_3').click(function(){
        $('.sidebar').hide();
        $('.nav-top').children('li').hide();
        $('.category_3').show();
    });



    $('.big_category').click(function(){
        console.log(1);
        $('.sidebar').show();
    });

    
    $('.big_category').click(function(){
        $('.big_category_1').show();
    });


    $('.big_category').click(function(){
        $('.big_category_2').show();
    });

    $('.big_category').click(function(){
        $('.big_category_3').show();
    });

    // $('.nav-top button').click(function() {
    //     if ($(this).next('.compose').css('display') == 'block')
    //     {
    //         $(this).next('.compose').hide();
    //     }
    //     else
    //     {
    //         $('.compose').hide();
    //         $(this).next('.compose').toggle();
    //     }    

    // });

$('.btn-info').click(function() {
    var $div = $(this).next('.compose_1');
    if ($div.css('display') == 'block')
    {
        $div.hide();
    }
    else
    {
        $('.compose_1').hide();
        $div.toggle();
    }

});

$('.btn-content').click(function() {
    var $div = $(this).next('.compose_2');
    if ($div.css('display') == 'block')
    {
        $div.hide();
    }
    else
    {
        $('.compose_2').hide();
        $div.toggle();
    }

});





});


