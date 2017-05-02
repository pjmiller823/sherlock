$(document).ready(function() {

  $('body').on('click', '.clickable-heart', function(event) {
    let homeId = $(this).data('homeid')
    let isFavorited = $(this).hasClass('glyphicon-heart')

    $(this).toggleClass("glyphicon-heart-empty")
    $(this).toggleClass("glyphicon-heart")

    $.ajax({
      method: 'POST',
      url: isFavorited ? `/homes/${homeId}/unfavorite` : `/homes/${homeId}/favorite`,
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
  $('body').on('click', '.square-footage', function(event) {
    let showingFeet = $(this).data('showingfeet')
    let sqFeet      = $(this).data("sqfeet")
    let sqMeters    = $(this).data('sqmeters')

    $(this).text(showingFeet ? `Meters Squared: ${sqMeters}` : `Square Footage: ${sqFeet}`)

    $(this).data('showingfeet', !showingFeet)
  })
})
