(function($){

  $(function(){
    $(window).on('scroll resize', function(event) {
      ;$('.carousel-item').css('max-height', function(){
        var img = $(this).find('img'); console.log(img.height());
      });
    });
  });

  

})(jQuery);

//
// if (window.addtocalendar)if(typeof window.addtocalendar.start == "function")return;
// if (window.ifaddtocalendar == undefined) { window.ifaddtocalendar = 1;
//   var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
//   s.type = 'text/javascript';s.charset = 'UTF-8';s.async = true;
//   s.src = ('https:' == window.location.protocol ? 'https' : 'http')+'://addtocalendar.com/atc/1.5/atc.min.js';
//   var h = d[g]('body')[0];h.appendChild(s); }})();
