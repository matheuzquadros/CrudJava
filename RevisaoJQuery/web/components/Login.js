$(document).ready(function () {
    $('#login').on('submit', function (e) {
        var element = $(e.target),
                button = element.find("button"),
                divFeedback = element.find(".form-feedback"),
                login = $('#inputLogin').val(),
                password = $('#inputPassword').val();

        //e.preventDefault();

        button.addClass("hidden");
        var loader = $('<div>').addClass("loader");
        divFeedback.append(loader);

//        $.ajax({
//            method: "POST",
//            url: "/RevisaoJQuery/userAuthentication",
//            data: {login: login, password: password}
//        }).then(function (res) {
//            console.log(res);
//            if (res.Data.Success) {
//                $(location).attr('href', 'main.jsp');
//            } else {
//                button.removeClass("hidden");
//                loader.removeClass("loader");
//                console.log(res.Data.Message);
//            }
//        });
    })
});