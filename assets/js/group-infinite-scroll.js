var page = 1;
var empty_page = false;
var block_request = false;
var is_mobile = false;

if( $('#dev').css('display')=='none') {
    is_mobile = true;
}
$(window).scroll(function() {
  if(is_mobile){
  var margin = $(document).height() - $(window).height() - 800;}
  else{
    var margin = $(document).height() - $(window).height() - 500;}
if ($(window).scrollTop() > margin && empty_page == false &&block_request == false) {
  block_request = true;
  page += 1;
  $.get('?page=' + page, function(data) {
    if(data == '') {
      empty_page = true;
      $('#spinner').css('display','none');
      }
else {
  block_request = false;
  $('.grid-container').append(data);
  }
});
}
});