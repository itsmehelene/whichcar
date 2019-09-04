import Swal from 'sweetalert2/dist/sweetalert2.js'

const blankslate = document.querySelector('.cars-blankslate')

if (blankslate) {
Swal.fire({
        title: 'Sorry!\nThere is no match according to your demands',
        text: "Do you want to search again ?",
        type: 'warning',
        confirmButtonText: 'Search again'
      }).then((result) => {
        if (result.value) {
          window.location.href = '/#1';
        }
      })
}
