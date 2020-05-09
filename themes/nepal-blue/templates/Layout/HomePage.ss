
  <!-- HOME PAGE -->
  <div id="home" class="page cf">
    <h2 class="title">Welcome</h2>
    <p class="page-subtitle">-Greg Nordfelt Official Website-</p>
    <!-- BEGIN NIVO SLIDER -->
    <% include ContentSlider %>
    <!-- end slider-container -->
    <!-- END NIVO SLIDER -->
    <div class="tagline cf">
      <div class="tagline-text">
        <h2>$Title</h2>
      $Content
      </div>
      <!-- end tagline-text -->
      <div class="tagline-btn">
        <a href="#">
          <span class="buy-btn"></span>
          <span class="btn-text">Call Greg!</span>
        </a>
      </div>
      <!-- end tagline-btn -->
    </div>
    <!-- end tagline -->
    <div class="separator"></div>
    <%-- <div class="two-third">
      <div class="col-title">
        <h3>About Greg Nordfelt</h3>
        <span class="subtitle">Another Subtitle</span>
      </div>
      $Content
    </div>
    <div class="one-third last">
      <div class="col-title">
        <h3>Force of Nature</h3>
        <span class="subtitle">Another Subtitle</span>
      </div>
      <p>
        <strong>Proin  sapien risus, bibenduac
    tempor ac, posuere id magna.</strong>
      </p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin  sapien risus, bibenduac
    tempor ac, posuere id magna.</p>
    </div>
    <div class="full-width cf">
      <span class="twitter-separator"></span>
      <div class="twitter-feed"></div>
      <!-- end twitter-feed -->
    </div>
    <div class="separator"></div> --%>
  </div>
  <!-- end home -->
  <!-- ABOUT PAGE -->
  <% with Page('meet-greg') %>
    <div id="about" class="page cf">
      <h2 class="title">About Greg</h2>
      <p class="page-subtitle">-Yet Another Subtitle-</p>
      <div class="two-third">
        <div class="col-title">
          <h3>About Greg Nordfelt</h3>
          <span class="subtitle">Few words about our company</span>
        </div>
        $Content.FirstParagraph
      </div>
      <div class="one-third last">
        <div class="col-title">
          <h3>In The News...</h3></h3>
          <span class="subtitle">Check out our skill set</span>
        </div>
        <img src="//placehold.it/200X250" alt="">
      </div>
      <div class="separator"></div>
      <div class="full-width cf">
        <%-- <div class="col-title">
          <h3>Meet The Team</h3>
          <span class="subtitle">Say Hello to our members</span>
        </div> --%>
        <%-- <div class="team">
          <div class="member cf">
            <ul class="member-social">
              <li class="facebook-tran">
                <a href="#">Faebook</a>
              </li>
              <li class="twitter-tran">
                <a href="#">Twitter</a>
              </li>
              <li class="skype-tran">
                <a href="#">Skype</a>
              </li>
              <li class="google-tran">
                <a href="#">Google</a>
              </li>
            </ul>
            <div class="member-details">
              <img class="member-img" src="/$ThemeDir/img/member-2.jpg" alt="image" />
              <div class="member-name">
                <h4>Jane Doe</h4>
                <span class="subtitle">Graphic Designer</span>
              </div>
              <!-- end member-name -->
              <p>Fusce scelerisque pellentesqu
            suspendisse elementum tellus
            vel volutpat. Proin sapien
            fusce scelerisque </p>
            </div>
            <!-- end member-details -->
          </div>
          <!-- end member -->
          <div class="member cf">
            <ul class="member-social">
              <li class="facebook-tran">
                <a href="#">Faebook</a>
              </li>
              <li class="twitter-tran">
                <a href="#">Twitter</a>
              </li>
              <li class="skype-tran">
                <a href="#">Skype</a>
              </li>
              <li class="linkedin-tran">
                <a href="#">LinkedIn</a>
              </li>
              <li class="google-tran">
                <a href="#">Google</a>
              </li>
            </ul>
            <div class="member-details cf">
              <img class="member-img" src="/$ThemeDir/img/member-1.jpg" alt="image" />
              <div class="member-name">
                <h4>John Doe</h4>
                <span class="subtitle">Lead Designer</span>
              </div>
              <!-- end member-name -->
              <p>Fusce scelerisque pellentesqu
            suspendisse elementum tellus
            vel volutpat. Proin sapien
            fusce scelerisque </p>
            </div>
            <!-- end member-details -->
          </div>
          <!-- end member -->
          <div class="member cf">
            <ul class="member-social">
              <li class="facebook-tran">
                <a href="#">Faebook</a>
              </li>
              <li class="twitter-tran">
                <a href="#">Twitter</a>
              </li>
              <li class="skype-tran">
                <a href="#">Skype</a>
              </li>
              <li class="google-tran">
                <a href="#">Google</a>
              </li>
            </ul>
            <div class="member-details">
              <img class="member-img" src="/$ThemeDir/img/member-4.jpg" alt="image" />
              <div class="member-name">
                <h4>Johnathan Doeson</h4>
                <span class="subtitle">Creative Director</span>
              </div>
              <!-- end member-name -->
              <p>Fusce scelerisque pellentesqu
            suspendisse elementum tellus
            vel volutpat. Proin sapien
            fusce scelerisque </p>
            </div>
            <!-- end member-details -->
          </div>
          <!-- end member -->
        </div> --%>
        <!-- end team -->
      </div>
      <div class="separator"></div>
      <div class="full-width cf">
        <div class="col-title">
          <h3>Services We Offer</h3>
          <span class="subtitle">List of Services we offer</span>
        </div>
        <div class="boxes-dark cf">
          <div class="one-third">
            <div class="box">
              <h3>Live Forever</h3>
              <span class="subtitle">Another Subtitle</span>
              <img src="/$ThemeDir/img/box-icons/dark/arrows.png" alt="image description" />
              <p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>
            </div>
            <!-- end box -->
          </div>
          <div class="one-third">
            <div class="box">
              <h3>Champagne Supernova</h3>
              <span class="subtitle">Another Subtitle</span>
              <img src="/$ThemeDir/img/box-icons/dark/flag-2.png" alt="image description" />
              <p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>
            </div>
            <!-- end box -->
          </div>
          <div class="one-third last">
            <div class="box">
              <h3>Hey Now!</h3>
              <span class="subtitle">Another Subtitle</span>
              <img src="/$ThemeDir/img/box-icons/dark/spanner.png" alt="image description" />
              <p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>
            </div>
            <!-- end box -->
          </div>
          <div class="one-third">
            <div class="box">
              <h3>Morning Glory</h3>
              <span class="subtitle">Another Subtitle</span>
              <img src="/$ThemeDir/img/box-icons/dark/vol-up.png" alt="image description" />
              <p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>
            </div>
            <!-- end box -->
          </div>
          <div class="one-third">
            <div class="box">
              <h3>Bring It On Down</h3>
              <span class="subtitle">Another Subtitle</span>
              <img src="/$ThemeDir/img/box-icons/dark/paper-plane.png" alt="image description" />
              <p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>
            </div>
            <!-- end box -->
          </div>
          <div class="one-third last">
            <div class="box">
              <h3>Supersonic</h3>
              <span class="subtitle">Another Subtitle</span>
              <img src="/$ThemeDir/img/box-icons/dark/film.png" alt="image description" />
              <p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>
            </div>
            <!-- end box -->
          </div>
        </div>
        <!-- end boxes-dark -->
      </div>
    </div>
  <% end_with %>
  <!-- end about -->
  <!-- PORTFOLIO PAGE -->
  <div id="portfolio" class="page"><h2 class="title">Greg's Mission</h2>
  <p class="page-subtitle">-Yet Another Subtitle-</p>

  <!-- end boxes -->


  <a id="load-more" class="button small-btn" href="#">Load More Projects</a>

  </div>
  <!-- end portfolio -->
  <!-- ELEMENTS PAGE -->
  <div id="elements" class="page">
    <h2 class="title">Page Elements</h2>
    <p class="page-subtitle">-Yet Another Subtitle-</p>
    <div class="full-width-margin cf">
      <h3>Text With Image Left</h3>
      <img class="left-img" src="/$ThemeDir/img/placeholder.jpg" alt="Image description" />
      <p>Nulla id massa ac eros dignissim volutpat ac vel tortor. Praesent vel magna turpis, sed vehicula libero. Nullam viverra
    ante vitae risus
        <a href="#">lobortis in sollicitudin</a> odio imperdiet. Duis turpis nulla, porta quis luctus ut, imperdiet et urna.
    Pellentesque dapibus orci vitae metus luctus fringilla.
      </p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin gravida luctus dui eu placerat. Aliquam vitae tincidunt lorem. Nam ligula neque, laoreet ut rhoncus et, varius at mi. Morbi sit amet rutrum velit. Phasellus blandit tincidunt quam vitae rhoncus.</p>
      <h3>Text With Image Right</h3>
      <img class="right-img" src="/$ThemeDir/img/placeholder.jpg" alt="Image description" />
      <p>Nulla id massa ac eros dignissim volutpat ac vel tortor. Praesent vel magna turpis, sed vehicula libero. Nullam viverra
    ante vitae risus
        <a href="#">lobortis in sollicitudin</a> odio imperdiet. Duis turpis nulla, porta quis luctus ut, imperdiet et urna.
    Pellentesque dapibus orci vitae metus luctus fringilla.
      </p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin gravida luctus dui eu placerat. Aliquam vitae tincidunt lorem. Nam ligula neque, laoreet ut rhoncus et, varius at mi. Morbi sit amet rutrum velit. Phasellus blandit tincidunt quam vitae rhoncus.</p>
    </div>
    <div class="separator"></div>
    <div class="one-half cf">
      <h3>Toggle Panels</h3>
      <div class="toggle-container">
        <div class="toggle-header">
          <h4>
            <a class="tog-open" href="#">
              <span></span>Heading Styles
            </a>
          </h4>
        </div>
        <div class="toggle-content">
          <h1>Heading 1</h1>
          <h2>Heading 2</h2>
          <h3>Heading 3</h3>
          <h4>Heading 4</h4>
          <h5>Heading 5</h5>
          <h6>Heading 6</h6>
        </div>
      </div>
      <!-- end toggle-container -->
      <div class="toggle-container">
        <div class="toggle-header">
          <h4>
            <a class="tog-open" href="#">
              <span></span>Button Examples
            </a>
          </h4>
        </div>
        <div class="toggle-content">
          <a class="button tiny-btn" href="#">Tiny Button</a>
          <br />
          <a class="button small-btn" href="#">Small Button</a>
          <br />
          <a class="button medium-btn" href="#">Medium Button</a>
          <br />
          <a class="button large-btn" href="#">Large Button</a>
          <br />
        </div>
      </div>
      <!-- end toggle-container -->
      <div class="toggle-container">
        <div class="toggle-header">
          <h4>
            <a class="tog-open" href="#">
              <span></span>Aliquam eget lacus
            </a>
          </h4>
        </div>
        <div class="toggle-content">
          <p>Aliquam eget lacus magna quis. Suspendisse sit amet odio pellentesque odio faucibus tristique. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor.</p>
        </div>
      </div>
      <!-- end toggle-container -->
    </div>
    <div class="one-half last cf">
      <h3>Accordion Panels</h3>
      <div class="accordion-container">
        <div class="accordion-header">
          <h4>
            <a class="acc-open" href="#">
              <span></span>Aliquam eget lacus
            </a>
          </h4>
        </div>
        <div class="accordion-content">
          <p>Aliquam eget lacus magna quis. Suspendisse sit amet odio pellentesque odio faucibus tristique. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor.</p>
        </div>
      </div>
      <!-- end accordion-container -->
      <div class="accordion-container">
        <div class="accordion-header">
          <h4>
            <a class="acc-open" href="#">
              <span></span>Aliquam eget lacus
            </a>
          </h4>
        </div>
        <div class="accordion-content">
          <p>Aliquam eget lacus magna quis. Suspendisse sit amet odio pellentesque odio faucibus tristique. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor.</p>
        </div>
      </div>
      <!-- end accordion-container -->
      <div class="accordion-container">
        <div class="accordion-header">
          <h4>
            <a class="acc-open" href="#">
              <span></span>Aliquam eget lacus
            </a>
          </h4>
        </div>
        <div class="accordion-content">
          <p>Aliquam eget lacus magna quis. Suspendisse sit amet odio pellentesque odio faucibus tristique. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor.</p>
        </div>
      </div>
      <!-- end accordion-container -->
    </div>
    <div class="separator"></div>
    <h3>List styles</h3>
    <div class="one-third">
      <ul class="custom-list check">
        <li>Consectetur adipiscing elit</li>
        <li>Aliquam in justo a sapien </li>
        <li>Massa euismod tempus</li>
        <li>Feugiat sodales pretium</li>
      </ul>
    </div>
    <div class="one-third">
      <ol class="custom-list square">
        <li>Consectetur adipiscing elit</li>
        <li>Aliquam in justo a sapien </li>
        <li>Massa euismod tempus</li>
        <li>Feugiat sodales pretium</li>
      </ol>
    </div>
    <div class="one-third last">
      <ul class="custom-list arrows">
        <li>Consectetur adipiscing elit</li>
        <li>Aliquam in justo a sapien </li>
        <li>Massa euismod tempus</li>
        <li>Feugiat sodales pretium</li>
      </ul>
    </div>
    <div class="one-third">
      <ul class="custom-list crossed">
        <li>Consectetur adipiscing elit</li>
        <li>Aliquam in justo a sapien </li>
        <li>Massa euismod tempus</li>
        <li>Feugiat sodales pretium</li>
      </ul>
    </div>
    <div class="one-third">
      <ol class="custom-list disc">
        <li>Consectetur adipiscing elit</li>
        <li>Massa euismod tempus</li>
        <li>Aliquam in justo a sapien </li>
        <li>Feugiat sodales pretium</li>
      </ol>
    </div>
    <div class="one-third last">
      <ol class="custom-list">
        <li>Consectetur adipiscing elit</li>
        <li>Massa euismod tempus</li>
        <li>Aliquam in justo a sapien </li>
        <li>Feugiat sodales pretium</li>
      </ol>
    </div>
    <div class="separator"></div>
    <div class="full-width-margin cf">
      <h3>Pull Quote, Dropcaps and Highlights</h3>
      <p>
        <span class="dropcap-1">A</span>orem ipsum dolor sit amet, consectetur
        <span class="highlight-1">this is a highlight</span> adipiscing elit. Quisque elit enim, consequat et rhoncus quis, tempus ac elit. Donec vel sem nibh, eu aliquet leo. Praesent dapibus, massa euismod tempus scelerisque, ipsum tellus faucibus arcu, quis convallis diam justo vel lorem. Praesentet metus in ante placerat sodales. Vestibulum nec convallis metus.
      </p>
      <blockquote class="quote-right">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque elit enim, consequat et rhoncus quis, tempus ac elit. </p>
        <div class="author">John Doe
          <br /> Personalize, inc
        </div>
      </blockquote>
      <p>
        <span class="dropcap-2">B</span>orem ipsum dolor sit amet, consectetur adipiscing elit. Quisque elit enim,
        <span class="highlight-2">this is a highlight</span> consequat et rhoncus quis, tempus ac elit. Donec vel sem nibh, eu aliquet leo. Praesent dapibus, massa euismod tempus scelerisque, ipsum tellus.
      </p>
      <p>Faucibus arcu, quis convallis diam
        <span class="highlight-3">this is a highlight</span> justo vel lorem. Praesentet metus in ante placerat sodales. Vestibulum nec convallis metus. Suspendisse potenti. Aliquam vel faucibus lectus. Pellentesque consectetur placerat sem non tincidunt. Maecenas bibendum fermentum
    imperdiet. Suspendisse turpis massa, aliquet ut semper sed. Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
    massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas.
      </p>
    </div>
    <div class="separator"></div>
    <div class="full-width">
      <h3>Notification Boxes</h3>
      <div class="yellow-info info-box">
        <a class="info-close" href="#">X</a>
        <h4>Yellow Info Box</h4>
        <p>Aenean porttitor, lectus at dapibus egestas. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem.</p>
      </div>
      <div class="green-info info-box">
        <a class="info-close" href="#">X</a>
        <h4>Green Info Box</h4>
        <p>Aenean porttitor, lectus at dapibus egestas. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem.</p>
      </div>
      <div class="red-info info-box">
        <a class="info-close" href="#">X</a>
        <h4>Red Info Box</h4>
        <p>Aenean porttitor, lectus at dapibus egestas. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem.</p>
      </div>
      <div class="blue-info info-box">
        <a class="info-close" href="#">X</a>
        <h4>Blue Info Box</h4>
        <p>Aenean porttitor, lectus at dapibus egestas. Fusce scelerisque pellentesque mi. Suspendisse elementum tellus ut quam pharetra vel volutpat et, euismod eu sem.</p>
      </div>
    </div>
  </div>
  <!-- end elements -->
  <!-- BLOG PAGE -->
  <div id="blog" class="page">
    <h2 class="title">The Blog</h2>
    <p class="page-subtitle">-Yet Another Subtitle-</p>
    <div class="blog-post cf">
      <div class="meta">
        <div class="blog-type text-post"></div>
        <!-- end blog-type -->
        <div class="date">
          <span class="day">6</span>
          <span class="month">feb</span>
        </div>
        <!-- end date -->
        <div class="share-post">
          <ul class="share-networks">
            <li>
              <a class="facebook-tran" href="#"></a>
            </li>
            <li>
              <a class="pinterest-tran" href="#"></a>
            </li>
            <li>
              <a class="google-tran" href="#"></a>
            </li>
            <li>
              <a class="twitter-tran" href="#"></a>
            </li>
          </ul>
          <a class="share-btn closed" href="#">Share</a>
        </div>
        <!-- share-post -->
      </div>
      <!-- end meta -->
      <div class="blog-preview">
        <a class="img-link" href="blog-single.html">
          <img src="/$ThemeDir/img/blog/001.jpg" alt="Image Description" />
        </a>
        <div class="blog-title">
          <h3>
            <a href="blog-single.html">Champagne Supernova</a>
          </h3>
          <span class="tags">by
            <a href="#">Admin</a> in
            <a href="#">Photoshop</a>,
            <a href="#">InDesign</a>,
            <a href="#">Fireworks</a> with
            <a href="#">5 comments</a>
          </span>
        </div>
        <!-- end blog-title -->
        <p>Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
      massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas, tellus ipsum rhoncus orci, eu
      vestibulum nisi orci quis nunc. Vivamus sit amet odio pellentesque odio faucibus tristique.</p>
        <p>Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
      massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas.</p>
        <a class="button small-btn" href="blog-single.html">Continue Reading</a>
      </div>
      <!-- end blog-preview -->
    </div>
    <!-- end blog-post -->
    <div class="separator"></div>
    <div class="blog-post cf">
      <div class="meta">
        <div class="blog-type photo-post"></div>
        <!-- end blog-type -->
        <div class="date">
          <span class="day">4</span>
          <span class="month">feb</span>
        </div>
        <!-- end date -->
        <div class="share-post">
          <ul class="share-networks">
            <li>
              <a class="facebook-tran" href="#"></a>
            </li>
            <li>
              <a class="pinterest-tran" href="#"></a>
            </li>
            <li>
              <a class="google-tran" href="#"></a>
            </li>
            <li>
              <a class="twitter-tran" href="#"></a>
            </li>
          </ul>
          <a class="share-btn closed" href="#">Share</a>
        </div>
        <!-- share-post -->
      </div>
      <!-- end meta -->
      <div class="blog-preview">
        <a class="img-link" href="blog-single.html">
          <img src="/$ThemeDir/img/blog/002.jpg" alt="Image Description" />
        </a>
        <div class="blog-title">
          <h3>
            <a href="blog-single.html">Definitely Maybe</a>
          </h3>
          <span class="tags">by
            <a href="#">Admin</a> in
            <a href="#">Photoshop</a>,
            <a href="#">InDesign</a>,
            <a href="#">Fireworks</a> with
            <a href="#">5 comments</a>
          </span>
        </div>
        <!-- end blog-title -->
        <p>Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
      massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas, tellus ipsum rhoncus orci, eu
      vestibulum nisi orci quis nunc. Vivamus sit amet odio pellentesque odio faucibus tristique.</p>
        <p>Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
      massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas.</p>
        <a class="button small-btn" href="blog-single.html">Continue Reading</a>
      </div>
      <!-- end blog-preview -->
    </div>
    <!-- end blog-post -->
    <div class="separator"></div>
    <div class="blog-post cf">
      <div class="meta">
        <div class="blog-type video-post"></div>
        <!-- end blog-type -->
        <div class="date">
          <span class="day">30</span>
          <span class="month">jan</span>
        </div>
        <!-- end date -->
        <div class="share-post">
          <ul class="share-networks">
            <li>
              <a class="facebook-tran" href="#"></a>
            </li>
            <li>
              <a class="pinterest-tran" href="#"></a>
            </li>
            <li>
              <a class="google-tran" href="#"></a>
            </li>
            <li>
              <a class="twitter-tran" href="#"></a>
            </li>
          </ul>
          <a class="share-btn closed" href="#">Share</a>
        </div>
        <!-- share-post -->
      </div>
      <!-- end meta -->
      <div class="blog-preview">
        <iframe src="http://player.vimeo.com/video/7449107?title=0&amp;byline=0&amp;portrait=0" width="632" height="269"></iframe>
        <div class="blog-title">
          <h3>
            <a href="#">What's The Story, Morning Glory</a>
          </h3>
          <span class="tags">by
            <a href="#">Admin</a> in
            <a href="#">Photoshop</a>,
            <a href="#">InDesign</a>,
            <a href="#">Fireworks</a> with
            <a href="#">5 comments</a>
          </span>
        </div>
        <!-- end blog-title -->
        <p>Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
      massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas, tellus ipsum rhoncus orci, eu
      vestibulum nisi orci quis nunc. Vivamus sit amet odio pellentesque odio faucibus tristique.</p>
        <p>Vivamus sit amet odio pellentesque odio faucibus tristique. Morbi facilisis, ligula a faucibus pellentesque, orci justo consequat
      massa, sit amet dapibus dolor diam viverra mi. Aenean porttitor, lectus at dapibus egestas.</p>
        <a class="button small-btn" href="#">Continue Reading</a>
      </div>
      <!-- end blog-preview -->
    </div>
    <!-- end blog-post -->
  </div>
  <!-- end blog -->
  <!-- CONTACT PAGE -->
  <div id="contact" class="page cf">
    <% include ContactPage %>
  </div>
  <!-- end contact -->
</div>
