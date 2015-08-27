console.log("loooooooooaded.");
$(document).ready(function() {


  var list = $('.order');

  for (var i = 0; i < list.length; i++){
      var timeDiff= ((Date.parse(new Date())) - (Date.parse(list[i].getAttribute('data-start-time'))))/60000;

      if (timeDiff < 15){
        list[i].style.backgroundColor = 'lightgreen';
      } else if (timeDiff >=15 && timeDiff < 20){
        list[i].style.backgroundColor = 'orange';
      } else {
        list[i].style.backgroundColor = 'red';
      }
  };



  $("#open-modal").on("click", function() {
    console.log("You clicked the open button!");
    $("#modal").toggle();
  });

  // Add an event to CLOSE the modal
  $("#close-modal").on("click", function() {
    console.log("You clicked the close button.");
    $("#modal").toggle();
  });

});
