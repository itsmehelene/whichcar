$('input[type=checkbox]').change(function(e){
   if ($('input[type=checkbox]:checked').length > 3) {
        $(this).prop('checked', false)
        sweetAlert("You can just compare maximum 3 items");
   }
})
