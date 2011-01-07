/* Here are the instructions for implementing Google Analytics on our website. */
/* For more information, see http://code.google.com/apis/analytics/docs/tracking/asyncTracking.html */

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-20604336-1']);
  _gaq.push(['_setDomainName', '.haerfest.us']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

