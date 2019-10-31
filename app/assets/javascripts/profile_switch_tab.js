$(document).on("turbolinks:load",function(){
  $(".tweet-list__content__tablist__tab").on("click", function(){
    $(".tweet-list__content__tablist__tab.is_active").removeClass("is_active");
		$(this).addClass('is_active');
    $(".tweet-list__content__tabcontent.is_shown").removeClass("is_shown");
    var index = $(this).index();
    $(".tweet-list__content__tabcontent").eq(index).addClass("is_shown");
  })
})