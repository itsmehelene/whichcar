// $('button[type=button]').
// console.log("je suis la")
// const car = document.getElementById('30');
//   console.log(car)
//     car.addEventListener('click', (event) => {
//   console.log(event);
// });

function testAnim(x) {
    $('.modal .modal-dialog').attr('class', 'modal-dialog  ' + x + '  animated');
};
$('#myModal').modal(options).on('show.bs.modal', function (e) {
  var anim = $('#entrance').val();
      testAnim(anim);
})
$('#myModal').on('hide.bs.modal', function (e) {
  var anim = $('#exit').val();
      testAnim(anim);
})
// $('#myModal').modal(options)


