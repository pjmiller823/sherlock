$(document).ready(function() {
  // Square Feet to Square Meters
  $('.show-media').on('click', '.square-footage', function(event) {
   let sqFeet = $(this).data("sqfeet")
   let sqMeters = (sqFeet * 0.093).toFixed(2)
   console.log(`The value is ${sqMeters}`)
   $(this).replaceWith( `<li class="square-meters" data-sqfeet="${sqFeet}">Meters Squared: ${sqMeters}</li>` )
  })

  // Square Meters to Square Feet
  $('.show-media').on('click', '.square-meters', function(event) {
   let sqFeet = $(this).data("sqfeet")
   console.log(`The value is ${sqFeet}`)
   $(this).replaceWith( `<li class="square-footage" data-sqfeet="${sqFeet}">Square Footage: ${sqFeet}</li>` )
  })
})
