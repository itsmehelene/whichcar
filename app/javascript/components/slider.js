// var lowerSlider = document.querySelector('#lower'),
//    upperSlider = document.querySelector('#upper');

// if (lowerSlider) {
//  lowerVal = parseInt(lowerSlider.value);
//  upperVal = parseInt(upperSlider.value);

//   upperSlider.oninput = function() {
//      lowerVal = parseInt(lowerSlider.value);
//      upperVal = parseInt(upperSlider.value);

//      if (upperVal < lowerVal + 4) {
//         lowerSlider.value = upperVal - 4;

//         if (lowerVal == lowerSlider.min) {
//            upperSlider.value = 4;
//         }
//      }
//   };


//   lowerSlider.oninput = function() {
//      lowerVal = parseInt(lowerSlider.value);
//      upperVal = parseInt(upperSlider.value);

//      if (lowerVal > upperVal - 4) {
//         upperSlider.value = lowerVal + 4;

//         if (upperVal == upperSlider.max) {
//            lowerSlider.value = parseInt(upperSlider.max) - 4;
//         }

//      }
//   };
// }

$('.nstSlider').nstSlider({
    "crossable_handles": false,
    "left_grip_selector": ".leftGrip",
    "right_grip_selector": ".rightGrip",
    "value_bar_selector": ".bar",
    "value_changed_callback": function(cause, leftValue, rightValue) {
        $(this).parent().find('.leftLabel').text(leftValue);
        $(this).parent().find('.rightLabel').text(rightValue);
    }
});

$(".mySlider").nstSlider("set_position", 10, 900);

