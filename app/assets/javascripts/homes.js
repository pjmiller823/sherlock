$(document).ready(function() {
  $('.clickable-heart').on('click', function(event) {
   $(this).css({color: 'pink'})
 })
  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    console.log(`You are searching for ${queryValue}`)

    $.ajax({
      url: '/homes',
      data: { query: queryValue},
      dataType: 'script'
    })
  })
})
