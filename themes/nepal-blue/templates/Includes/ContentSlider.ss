<div id="slider-container">

  <div id="nivo-slider" class="nivoSlider">
    <% loop $SliderImages %>
    <img src="$CroppedImage(800,600).URL" alt="image description" title="#caption-$Pos" />
  <% end_loop %>
  </div>

<!-- begin slider captions -->

  <div id="caption-1" class="nivo-html-caption">
    <h3>Don't Look Back In Anger</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sapien risus, bibendum ac tempor ac...</p>
  </div><!-- end nivo captions -->

  <div id="caption-2" class="nivo-html-caption">
    <h3>All Around The World</h3>
    <p> Proin sapien risus, bibendum ac tempor ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
  </div><!-- end nivo captions -->

  <div id="caption-3" class="nivo-html-caption">
    <h3>Go Let It Out!</h3>
    <p> Proin sapien risus, bibendum ac tempor ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
  </div><!-- end nivo captions -->

<!-- end slider captions -->

</div>
