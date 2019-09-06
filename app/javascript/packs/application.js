//= require sweetalert2
//= require sweet-alert2-rails
import "bootstrap";
// import "../components/slider";
import "../components/compare";
import "../components/alertfunction";
// import "../components/move_card";
import 'balloon-css/balloon.css';
import 'animate.css/animate.min.css'
import 'ion-rangeslider'
import '../components/movefunction'
import aos from 'aos'
import needAuth from '../components/need_auth'

aos.init({})

$("#search_prices").ionRangeSlider({
  type: "double",
  grid: true,
  min: 0,
  max: 100000,
  from: 1000,
  to: 50000,
  step: 1000,
  skin: "round"
});


needAuth()


const modalCarId = new URLSearchParams(window.location.search).get('openModal')


if (modalCarId) {
  const modalId = "#myModal" + modalCarId
  console.log(modalId)
  $(modalId).modal('show')
}
