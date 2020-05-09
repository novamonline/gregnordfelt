<nav class="navbar navbar-toggleable-sm navbar-light bg-primary sticky-top">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="container">
    <a class="navbar-brand" href="/">
      <img class="greg-nordfelt-logo" src="/$ThemeDir/img/logo.png" alt="Greg Nordfelt Website">
    </a>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <ul class="navbar-nav ml-auto">
        <% loop $Menu(1) %>
          <li class="nav-item<% if $LinkOrSection = 'current' %> active<% end_if %>">
            <a class="nav-link text-uppercase" href="<% if $Up.URLSegment = 'home' %>#<% else %>/<% end_if %>$URLSegment">
              $MenuTitle <% if $LinkOrSection = 'section' %><span class="sr-only">($LinkOrSection)</span><% end_if %>
            </a>
          </li>
        <% end_loop %>
      </ul>
    </div>
  </div>
</nav>
