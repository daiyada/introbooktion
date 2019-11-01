$(document).on("turbolinks:load",function(){
  $(".tweet-list__left__selection__box__text").on("click", function(){
    $(".tweet-list__left__selection__box__text.shown").removeClass("shown");
    $(this).addClass("shown");
    $(".tweet-list__left__selection__box__list.active").removeClass("active");
    var index = $(this).parent().index();
    var y = $(".tweet-list__left__selection__box").eq(index);
    $(".tweet-list__left__selection__box").eq(index).children(".tweet-list__left__selection__box__list").addClass("active");
    debugger;
  })
})