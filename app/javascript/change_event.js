console.log("call")
$("#user_city").prop("disabled", true);
$("#user_state").change(function () {
    var tempsid = $(this).val();
    
    $("#user_city").prop("disabled", false);
    $.ajax({
        url: '/user',
        type: 'get',
        data: { Id: tempsid }
    });
    console.log(tempsid);
    console.log("------>>>>>");
});

