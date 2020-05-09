<div class="owl-carousel" data-dots-container="#owl-dots-$ID" data-autoplay="true" data-nav-speed="800" <% if $Limit %>data-limit="$Limit"<% end_if %>>
<% loop $Children %>
  <div class="item"<% if $Height && $Height > 0 %> style="height:$Height"<% end_if %>>
  <figure<% if $Height && $Height > 0 %> style="height:$Height"<% end_if %>>
  <img src="$SetHeight(500).URL" class="img-fluid" alt="$TITLE" />
  <figcaption class="center-block">$TITLE $Top.URLSegment $URLSegment</figcaption>
</figure>
</div>
<% if $Pos == $Limit %>
</div>
<div class="item hidden" hidden>
<% end_if %>
<% end_loop %>
</div>
</div>
<div class="dots-container pt-1" id="owl-dots-$ID">

</div>
