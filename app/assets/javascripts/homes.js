$(document).ready(function() {

  // 'hearting' the houses.
  $('.media-left').on('click', '.favorited', function(event) {
    event.preventDefault()
    let home_id = $(this).data(`home-id`)
    console.log($(this).data(`home-id`))
    $(this)replaceWith(`<span class="clickable-heart favorited" data-remote=true data-type=script data-homeid="${home_id}"> &hearts;</span>`)


    $.ajax({
      type: 'POST'
      url: 'favorites/' + home_id,
      success: function(event){
        $(this).css({color: 'pink'})
      }
    })
  })

  // Unhearting
  $('.media-left').on('click', '.un-favorited', function(event) {
    let homeId = $(this).data("homeid")
    $(this).replaceWith( `<span class="clickable-heart un-favorited" data-remote=true data-type=script data-homeid="${home_id}"> &hearts;</span>` )

    $.ajax({
      type: "DELETE",
      url: 'favorites/destroy/' + home_id
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
   $(this).replaceWith( `<li class="square-meters" data-sqfeet="${sqFeet}">Meters Squared: ${sqMeters}</li>` )
  })

   // Square Meters to Square Feet
  $('.media').on('click', '.square-meters', function(event) {
   let sqFeet = $(this).data("sqfeet")
   $(this).replaceWith( `<li class="square-footage" data-sqfeet="${sqFeet}">Square Footage: ${sqFeet}</li>` )
  })




})
