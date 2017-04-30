$(document).ready(function() {
  // 'hearting' the houses.
  $('.clickable-heart').on('click', function(event) {
    event.preventDefault().css({color: "pink"})

    let home_id = $(this).data(`home-id`)

// build favorites controller. Create and Deletd action. in it's own controller.
    console.log($(this).data(`home-id`))


    $.ajax({
      url: '/favorites',
      data: { query: home_id},
      dataType: 'script'
    })

  })




  // dynamic search
  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    console.log(`You are searching for ${queryValue}`)

    $.ajax({
      url: '/homes',
      data: { query: queryValue},
      dataType: 'script'
    })
  })

  // AJAX and pagination and you.
  $('.page').on('click', function(event) {
    let page = $(this).val()

    console.log(page)
  })






})
