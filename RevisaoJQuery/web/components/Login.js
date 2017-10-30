


$( document ).ready(function() {
    $('#login').on('submit', function (e) {
    var element = $(e.target),
        button = element.find("button"),
        divFeedback = element.find(".form-feedback");
        
    e.preventDefault();

    button.addClass("hidden");
    var loader = $('<div>').addClass("loader");
    divFeedback.append(loader);
    
    $.ajax({
        method: "POST",
        url: "/RevisaoJQuery/userAuthentication",
        data: { login: "matheus@gmail.com", password: "matheusGod" }
    }).then(function(res){
        console.log(res);
        button.removeClass("hidden");
        loader.removeClass("loader");
        
    });
})
});