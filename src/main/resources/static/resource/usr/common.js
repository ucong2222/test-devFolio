function MobileTopBar__init() {
  $(".mobile-top-bar__btn-toggle-side-bar").click(function () {
    let $this = $(this);

    if ($this.hasClass("active") == false) {
      $(".mobile-side-bar").addClass("active z-20");
      $(".mobile-menu-block").removeClass("hidden");
      $(".mobile-menu-block").addClass("active block");
    }
  });

  $(".mobile-menu-block").click(function (e) {
    if ($(e.target).hasClass("active")) {
      $(".mobile-side-bar").removeClass("active");
      $(".mobile-menu-block").removeClass("active block");
      $(".mobile-menu-block").addClass("hidden");
    }
  });
}

MobileTopBar__init();

