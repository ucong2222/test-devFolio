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

var pos = 0;
var totalSlides = $('#slider-wrap ul li').length;
var sliderWidth = $('#slider-wrap').width() + 16;

$(window).resize(function (){
  // width값을 가져오기
  var width_size = window.outerWidth;
  
  sliderWidth = $('#slider-wrap').width();
  
  $('#slider li').removeClass('w-1/3');
  $('#slider li').css("width",sliderWidth + "px");
  
  slideLeft();
})

$(document).ready(function(){
  
  //set width to be 'x' times the number of slides
  $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
  
  $('#next').click(function(){
    slideRight();
  });
  
  $('#previous').click(function(){
    slideLeft();
  });
  
  var autoSlider = setInterval(slideRight, 3000);
  
  $.each($('#slider-wrap ul li'), function() { 

     var li = document.createElement('li');
     $('#pagination-wrap ul').append(li);    
  });
  
  countSlides();
  
  pagination();
  
  $('#slider-wrap').hover(
    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
  );

});
  
function slideLeft(){
  pos--;
  if(pos==-1){ pos = totalSlides-1; }
  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
  
  countSlides();
  pagination();
}

function slideRight(){
  pos++;
  if(pos==totalSlides){ pos = 0; }
  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
  
  countSlides();
  pagination();
}

function countSlides(){
  $('#counter').html(pos+1 + ' / ' + totalSlides);
}

function pagination(){
  $('#pagination-wrap ul li').removeClass('active');
  $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
}