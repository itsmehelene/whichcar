//= require sweetalert2
//= require sweet-alert2-rails
import "bootstrap";
// import "../components/slider";
import "../components/compare";
// import "../components/move_card";
import 'balloon-css/balloon.css';
import 'animate.css/animate.min.css'
import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'ion-rangeslider'
import '../components/movefunction'
import aos from 'aos'

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



const gra = function(min, max) {
    return Math.random() * (max - min) + min;
};
const init = function() {
    let items = document.querySelectorAll("li");
    for (let i = 0; i < items.length; i++) {
        // items[i].style.minHeight = gra(120, 205) + "vh";
        items[i].style.background = randomColor({ luminosity: "light" });
    }

    cssScrollSnapPolyfill();
};
init();
