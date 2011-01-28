//Notify users that there are more pictures

$(document).ready(function(){
  $("a.notify").click(function(e){
    e.preventDefault();
    jNotify(
      'CLICK IMAGE FOR MORE',
      {
        autoHide : true, // added in v2.0
        clickOverlay : false, // added in v2.0
        MinWidth : 300,
        TimeShown : 1750,
        ShowTimeEffect : 200,
        HideTimeEffect : 200,
        LongTrip :0,
        HorizontalPosition : 'center',
        VerticalPosition : 'bottom',
        ShowOverlay : false,
        ColorOverlay : '#000',
        OpacityOverlay : 0.3,
        onClosed : function(){ // added in v2.0

        },
        onCompleted : function(){ // added in v2.0

        }
      });
  });
});
