//in case you want to think about touch devices...I guess thats cool.
$('.mobile-dropdown').on('click', function(){
  var toggle = true;
  alert('oh yeahh');
  if(toggle===true){
    $(this).addClass('active-drop');
    toggle = false;
    alert('turned on');
  }else{
    $(this).removeClass('active-drop');
    toggle = true;
    alert('turned off');
  }
})