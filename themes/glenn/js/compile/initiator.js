$(function(){

  var OwlSliders = $('.owl-carousel');

  OwlSliders.each(function(){
    if($(this).data('navText') !== undefined){
      var navText = $(this).data('navText');
      $(this).data('navText', navText.split('|'));
    }
    var $this = $(this), options = $this.data() || {};


    var OwlOptions = $.extend({}, options, {
      center: true,
      margin: 0,
      loop: true,
      autoWidth: true,
      items: 3,
      nav: true,
      responsive: {
          0 : { items : 1  },
        480 : { items : 2  },
        768 : { items : 3  }
      },
    });
    console.log(OwlOptions);
    $this.owlCarousel(OwlOptions);

  });

});

$(function(){

   var parallax = function(){
     $('[data-parallax="scroll"]').each(function() {
          $(this).parallax( $.extend({}, $(this).data() || {}) );
     });
   };

   $(document).ready( parallax );
   $(window).on('load resize', parallax );
   $('.parallax-window *').click( parallax );
});

$(function(){
   var datepicker = function(){
     $('.datepicker').each(function() {
          $(this).datepicker( $.extend({}, $(this).data() || {}) );
     });
   };
});

$(function(){

  var pushFooter = function(){

    var bodyHeight = $(window).height();
    var headHeight = $('header').outerHeight();
    var footHeight = $('footer').outerHeight();

    $('main').css('min-height', function(){
      return bodyHeight - headHeight - footHeight;
    });
  };

  $(document).ready( pushFooter );
  $(window).on('load resize', pushFooter );

});
