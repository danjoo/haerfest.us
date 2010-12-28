// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

/* no longer needed now that we have partials
$(document).ready(function() {
  $('div.pagination a').live('click', function() {
    $('#slideshow').hide().load($(this).attr("href"), function(){
        $(this).fadeIn("slow");
    });
  })
})
*/

$(function() {
    var $active = $('#slideshow IMG.active');
    
    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
})

