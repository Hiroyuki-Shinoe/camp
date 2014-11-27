$(function(){
    
    $('.big_category_1').click(function(){
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

    $('.nav-top button').click(function() {
        $('.compose').hide();
        $(this).next('.compose').show();
    });



});