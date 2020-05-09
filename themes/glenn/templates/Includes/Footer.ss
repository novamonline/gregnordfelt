<footer class="bg-primary text-white py-3">
  <h2 class="section-title text-center mt-3">Connect With Greg</h2>
  <hr class="bd-white">
  <div class="container mt-3">
    <div class="row">
      <div class="col-sm-4">
        <div class="text-sm-left text-xs-center">
          <% if $SiteConfig.Signature %>
             $SiteConfig.Signature
          <% else %>
          <h4>GREG NORDFELF, MBA</h4>
          <p class="">
            Motivational Speaker, NSA<br>
            Writer & Neuro Rehab Mentor, IMC<br>
            <a href="$SiteConfig.NSA" target="_blank">Read Greg's NSA profile</a>
          </p>
          <% end_if %>
        </div>
      </div>
      <div class="col-sm-4">
         <div class="text-xs-center">
           <h4>CONTACT</h4>
           <hr>
           <p class="lead text-white">
             <i class="fa fa-phone"></i> <a href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a><br>
             <i class="fa fa-envelope"></i> <a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a>
           </p>
         </div>
      </div>
      <div class="col-sm-4">
        <div class="text-xs-center">
        <h4>FOLLOW GREG</h4>
        <hr>
        <% if $SiteConfig.Twitter %>
          <a href="https://twitter.com/$SiteConfig.Twitter" class="m-2" target="_blank"><i class="fa fa-twitter-square fa-2x"></i></a>
        <% end_if %>
        <% if $SiteConfig.Facebook %>
          <a href="https://www.facebook.com/$SiteConfig.Facebook" class="m-2" target="_blank"><i class="fa fa-facebook-square fa-2x"></i></a>
        <% end_if %>
        <% if $SiteConfig.LinkedIn %>
          <a href="https://www.linkedin.com/$SiteConfig.LinkedIn" class="m2" target="_blank"><i class="fa fa-linkedin-square fa-2x"></i></a>
        <% end_if %>
        <% if $SiteConfig.Instagram %>
          <a href="https://www.instagram.com/$SiteConfig.Instagram" class="m-2" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
        <% end_if %>
        <% if $SiteConfig.Youtube %>
          <a href="https://www.youtube.com/channel/$SiteConfig.Youtube" class="m-2" target="_blank"><i class="fa fa-youtube-square fa-2x"></i></a>
        <% end_if %>
        <% if $SiteConfig.GooglePlus %>
          <a href="https://plus.google.com/$SiteConfig.GooglePlus" class="m-2" target="_blank"><i class="fa fa-google-plus-square fa-2x"></i></a>
        <% end_if %>
        </div>
      </div>
    </div>
    <%-- <div class="row">
      <div class="col-sm-4">
        <div class="text-sm-left text-xs-center">
        <h4>SITE MAP</h4>
        <hr>
        <ul class="list-unstyled">
          <% loop Menu(1) %>
            <li class="text-uppercase">$Title</li>
          <% end_loop %>
        </ul>
        </div>
      </div>
    </div> --%>
  </div>
  <div class="bg-black text-xs-center">
    <hr>
    <small>&copy; $Now.Format('Y') GREG NORDFELT, MBA | POWERED BY <a href="//novamonline.com">NOVAM ONLINE, LLC</a></small>
  </div>
</footer>
<% include HireMe %>
