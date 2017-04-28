$(document).ready(function() {

  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    $.ajax({
      url: '/homes',
      data: { query: queryValue},
      datatype: 'script'
    })
  })
})
