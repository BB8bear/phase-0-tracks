$(document).ready(function() {
    $('button').click(function(){
        $('div').toggle('slide');
    });

    $('div').mouseenter(function() {
        $(this).fadeTo('slow', 0.5);
    });
    $('div').mouseleave(function(){
        $(this).fadeTo('slow', 1);
    });
    
});