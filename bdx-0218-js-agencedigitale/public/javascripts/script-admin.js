/* Scirpt de transformation de la Navbar  */
$(document).ready(function () {
  $(window).on("scroll", function () {

    if ($(window).scrollTop() >= 10) {
      $(".navbar").addClass("compressed");
      $(".navbar-brand").css("display", "block");
    } else {
      $(".navbar").removeClass("compressed");
      $(".navbar-brand").css("display", "none");
    }


    if ($(window).scrollTop() > window.innerHeight) {

      $(".navbar-brand").css("display", "block");
    } else {

      $(".navbar-brand").css("display", "none");
    }

  });

  // ajout de slick
  $(".slick").slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 3,
    slidesToScroll: 3,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 981,
        // breakpoint: 992,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 721,
        // breakpoint: 576,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });



  /* Script Animation BLOG */

  // Create the array with the text you want to write


  /* Script de la serious bar lors du scroll */

  var a = 0;
  $(window).scroll(function () {
      var $counter = $('#counter');

      if ($counter.length) {
          var oTop = $counter.offset().top - window.innerHeight;
          if (a == 0 && $(window).scrollTop() > oTop) {
            $('.counter-value').each(function () {
              var $this = $(this),
                countTo = $this.attr('data-count');
              $({
                countNum: $this.text()
              }).animate({
                countNum: countTo
              },

                {

                  duration: 1000,
                  easing: 'swing',
                  step: function () {
                    $this.text(Math.floor(this.countNum));
                  },
                  complete: function () {
                    $this.text(this.countNum);
                    //alert('finished');
                  }

                });
            });
            a = 1;
          }
      }
  });

  // Url image offre emploi

  $(".search logo_entreprise").each(function () {
    let url = $(this).attr('src');
    console.log(url);
  })



  // //////////////////////
  // PARTIE ADMINISTRATION
  // //////////////////////

  $(".links").click(function () {
    $(this).parent().addClass('active').siblings().removeClass('active');
    $(".divs:visible").hide();
    $("#" + $(this).attr("data-showdiv")).show();
  });

}); //fin document.ready
