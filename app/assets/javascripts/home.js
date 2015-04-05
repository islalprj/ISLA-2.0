$( document ).ready(function() {
  if ($('#log_in_button').length!==0){
    $('.button').removeClass('button');
  }

  $('.button').click(function(e){
    var id=(e.target.id);
    $.ajax ({
      method: 'patch',
      url: '/items/'+id+'/toggle',
      location:reload()
    });
  });
});
