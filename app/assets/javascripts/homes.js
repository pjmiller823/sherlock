$(document).ready(function() {
  // 'hearting' the houses.
  $('.media-left').on('click', '.clickable-heart', function(event) {
    event.preventDefault()

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

  // Square Feet to Square Meters
  $('.media').on('click', '.square-footage', function(event) {
   let sqFeet = $(this).data("sqfeet")
   let sqMeters = (sqFeet * 0.093).toFixed(2)
   console.log(`The value is ${sqMeters}`)
   $(this).replaceWith( `<li class="square-meters" data-sqfeet="${sqMeters}">${sqMeters} meters squared</li>` )
  })

   // Square Meters to Square Feet
  $('.media').on('click', '.sqMetersFeet', function(event) {
   let sqFeet = $(this).data("sqfeet")
   console.log(`The value is ${sqFeet}`)
   $(this).replaceWith( `<li class="square-meters" data-sqfeet="${sqFeet}">Square Footage: ${sqFeet}</li>` )
  })




})
