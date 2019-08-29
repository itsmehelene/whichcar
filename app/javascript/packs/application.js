//= require sweetalert2
//= require sweet-alert2-rails
import "bootstrap";
// import "../components/slider";
// import "../components/compare";
// import "../components/move_card";

import 'animate.css/animate.min.css'

import 'ion-rangeslider'




    $("#demo").ionRangeSlider({
        type: "double",
        grid: true,
        min: 0,
        max: 500000,
        from: 1000,
        to: 5000,
        step: 1000,
        skin: "round",
        onChange: function (data) {
            // Called every time handle position is changed
            // console.log("---")
            // console.log(data.from);
            // console.log(data.to)
            document.querySelector('#min').value = data.from
            document.querySelector('#max').value = data.to

        },
    });
