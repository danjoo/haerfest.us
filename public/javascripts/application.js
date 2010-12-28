// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $('div.pagination a').live('click', function() {
    $('#slideshow').fadeOut("slow", function() {
      // Animation complete.
      $('#slideshow').load(this.href);
    })
  })
})

