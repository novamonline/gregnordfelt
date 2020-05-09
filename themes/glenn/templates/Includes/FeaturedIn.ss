<div class="owl-carousel side-nav" data-auto-width ="true" data-dots="false" data-nav="true"  data-nav-text="<span class='fa fa-angle-double-left fa-lg'></span>|<span class='fa fa-angle-double-right fa-lg'></span>">
  <% loop Page('featured-in').Children %>
    <div class="border">
      <div class="column card-trans fadeInOut" data-mh="featurd-in">
        <div class="text-center m-3">
          <a href="$Parent.Link#$URLSegment">
            <img class="img-fluid" src="$FeatureLogo.SetHeight(75).URL" alt="">
          </a>
          <%-- <br>
          $Content --%>
        </div>
      </div>
    </div>
  <% end_loop %>
</div>
