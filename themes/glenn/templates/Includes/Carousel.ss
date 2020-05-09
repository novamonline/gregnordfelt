<div id="greg-nordfelt-slides" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#greg-nordfelt-slides" data-slide-to="0" class="active"></li>
        <% loop SliderContent %>
        <% if $Last %><% else %>
          <li data-target="#greg-nordfelt-slides" data-slide-to="$Pos"></li>
        <% end_if %>
      <% end_loop %>
    </ol>
      <div class="carousel-inner" role="listbox">
        <% loop SliderContent %>
        <div class="carousel-item<% if $First %> active<% end_if %>">
            <img src="$URL" style="height:$Up.Height:width:auto"> <!-- random image -->
            <div class="caption center-align">
              <h3 class="hide-on-small-only">$Title</h3>
              <h5 class="hide-on-med-and-up">$Title</h5>
            </div>
          <%-- <img class="$" alt="First slide">
          <div class="container">
            <div class="carousel-caption text-xs-left">
              <h1>Example headline.</h1>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div> --%>
        </div>
      <% end_loop %>
      </div>
      <%-- <a class="left carousel-control" href="#greg-nordfelt-slides" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#greg-nordfelt-slides" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a> --%>
    </div><!-- /.carousel -->
