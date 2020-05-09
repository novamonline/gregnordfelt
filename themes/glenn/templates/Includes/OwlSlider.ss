<div class="owl-carousel" data-dots-container="#owl-dots-$ID" data-autoplay="true" data-nav-speed="800" data-dots="false"<% if $Limit %> data-limit="$Limit"<% end_if %>>
<% loop $SliderContent %>
  <% if not $Limit || $Limit <= $Pos %>
  <div class="item"<% if $Height && $Height > 0 %> style="height:$Height"<% end_if %>>
  <figure<% if $Height && $Height > 0 %> style="height:$Height"<% end_if %>>
  <img src="$SetHeight(500).URL" class="img-fluid" alt="$TITLE" />
  <figcaption class="center-block">$TITLE $Top.URLSegment $URLSegment</figcaption>
</figure>
</div>
<% end_if %>
<% end_loop %>
</div>
</div>
<div class="dots-container pt-1" id="owl-dots-$ID">

</div>