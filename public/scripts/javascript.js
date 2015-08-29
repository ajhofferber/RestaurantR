console.log("loooooooooaded.");
$(document).ready(function() {
  $("#reciept-open-modal").on("click", openModal);
  $("#reciept-close-modal").on("click", closeModal);

  $("#menu-open-modal").on("click", openModal);
  $("#menu-close-modal").on("click", closeModal);

  $("#orders-open-modal").on("click", openModal);
  $("#orders-close-modal").on("click", closeModal);


  var list = $('.order');

  for (var i = 0; i < list.length; i++){
      var timeDiff= ((Date.parse(new Date())) - (Date.parse(list[i].getAttribute('data-start-time'))))/60000;

      if (timeDiff < 15){
        list[i].style.backgroundColor = 'lightgreen';
      } else if (timeDiff >=15 && timeDiff < 20){
        list[i].style.backgroundColor = 'orange';
      } else {
        list[i].style.backgroundColor = 'red';
        list[i].style.color ='ghostwhite'
      }
  };


});

function openModal(){

  $(this).find(".modal").toggle();
};

function closeModal(){
  $(this).find(".modal").toggle();
};
