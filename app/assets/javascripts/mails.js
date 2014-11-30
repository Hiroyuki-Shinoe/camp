$(function(){

    console.log(1);
    
    $('.big_category_1').click(function(){
        console.log(123);
        $('.nav-top').children('li').hide(); 
        $('.category_1').show();
    });

    $('.big_category_2').click(function(){
    $('.nav-top').children('li').hide();
        $('.category_2').show();
    });

    $('.big_category_3').click(function(){
    $('.nav-top').children('li').hide();
        $('.category_3').show();
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

    $('.nav-top button').click(function() {
        var $div = $(this).next('.compose');
        if ($div.css('display') == 'block')
        {
            $div.hide();
        }
        else
        {
            $('.compose').hide();
            $div.toggle();
        }

    });
});