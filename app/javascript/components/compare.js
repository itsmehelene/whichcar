import Swal from 'sweetalert2/dist/sweetalert2.js'


$('input[type=checkbox]').change(function(e){
   if ($('input[type=checkbox]:checked').length > 3) {
        $(this).prop('checked', false)
        Swal.fire({

           type: 'error',
          title: 'Oops...',
          text: 'You can compare maximum 3 cars!'
        })
        // swal("YOU CAN COMPARE MAXIMUM 3 CARS!");
   }
})
