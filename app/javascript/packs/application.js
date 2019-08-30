//= require sweetalert2
//= require sweet-alert2-rails
import "bootstrap";
// import "../components/slider";
// import "../components/compare";
// import "../components/move_card";

import 'animate.css/animate.min.css'

import 'ion-rangeslider'




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
