$(function(){
  createseating();
  //$('#btnSeating').on('click', createseating);
});
//Note:In js the outer loop runs first then the inner loop runs completely so it goes o.l. then i.l. i.l .i.l .i.l. i.l etc and repeat

var selectedSeats = [];

function createseating(){
  var seatingValue = [];
  var index = 0;
  for (var i = 0; i < 10; i++){
    for (var j = 0; j < 10; j++){
      index++;
      var seatingStyle = `<div id='${index}' class='seat available' style='transform:skew(10deg); float:left'></div>`;
      seatingValue.push(seatingStyle);
      
      if (j === 9){
        var seatingStyle = `<div id='${index}' class='clearfix'></div>`;
        seatingValue.push(seatingStyle);
      }
    }   
  }
  $('#createSeating').html(seatingValue);

  $(function(){
    $('.seat').on('click',function(){ 
      if($(this).hasClass( "selected" )){
        $( this ).removeClass( "selected" );
        selectedSeats.pop();            
      }else{                   
        $( this ).addClass( "selected" );
        selectedSeats.push(this.id);
      }
    });

    $('.seat').mouseenter(function(){     
      $( this ).addClass( "hovering" );

      $('.seat').mouseleave(function(){ 
        $( this ).removeClass( "hovering" );
      });
    });
  })
}

function comprar(capacity){
  var n_seats = selectedSeats.length;
  if (n_seats != 0) {
    capacity -= n_seats;
    $('#comprar').html(capacity);
  } else {
    $('#comprar').html("");
  }
}