import Swal from 'sweetalert2/dist/sweetalert2.js'

const needAuth = () => {
  console.log("je usi sla")
  document.querySelectorAll('.need-auth').forEach((starElement) => {
    starElement.addEventListener('click', (e) => {
      console.log("houhou")
      const carId = e.currentTarget.dataset.carId
      Swal.fire({
        title: 'You need an account to have favourites',
        text: "Do you want to log in ?",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Login'
      }).then((result) => {
        if (result.value) {
          console.log("on veut rediriger")
          document.cookie = 'open_modal_when_sign_in=' + carId
          window.location = "user/sign_in"
        }
      })
    })
  })
}


export default needAuth



