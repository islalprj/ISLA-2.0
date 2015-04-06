$( document ).ready(function() {
  console.log("loaded");
  if ($('#log_in_button').length!==0){
    $('.button').removeClass('button');
  }
  console.log($('.button'));
  $('.button').click(function(e){
    console.log("ive been clicked");
    var id=(e.target.id);
    $.ajax ({
      method: 'patch',
      url: '/items/'+id+'/toggle',
      success: function(){
        location.reload();

      }

    });
  });
});
