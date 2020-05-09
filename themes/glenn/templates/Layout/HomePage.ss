<section id="featured-in">
  <h3 class="section-title mt-3">As Featured On:</h3>
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-12">
        <% include FeaturedIn %>
      </div>
    </div>
  </div>
  <hr>
</section>

<% with Page('meet-greg') %>
  <section class="pb-2" id="$URLSegment">
    <h1 class="section-title">$Up.Heading</h1>
    <hr>
    <div class="container">
      <% loop Children %>
        <% if $First %>
          <div class="row fadeInOut">
            <div class="col-lg-6 col-md-12">
              <div class="card rounded mb-2">
                <div class="card-block p-1">
                  <div class="embed-responsive embed-responsive-4by3">
                    <iframe class="embed-responsive-item rounded" src="$FeatVideo" allowfullscreen></iframe>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-12">
              $Top.Content      
            </div>
          </div>
        <% end_if %>
      <% end_loop %>
    </div>
  </section>
<% end_with %>

<% with Page('his-mission') %>
  <section class="parallax-window py-2" data-parallax="scroll" data-image-src="$MainImage.URL" id="$URLSegment" data-min-height="800px" data-dots>
    <div class="container">
      <h2 class="section-title text-white mt-3">$Heading</h2>
      <hr class="bd-white">
      <div class="row">
        <% loop Children.Limit(3) %>
          <div class="col-md-4 text-center text-white fadeInOut">
            <img class="rounded-circle my-3" src="$FeatImage.CroppedImage(150,150).URL" atl="$FeatImage.TITLE">
            <h3>$Head</h3>
            <div class="overlay p-2">$Content.FirstParagraph</div>
          </div>
        <% end_loop %>
      </div>
      <hr class="clearfix bd-white">
      <div class="row">
        <div class="col mb-3 text-center">
          <a href="#hire-greg-nordfelt" data-toggle="modal" class="btn btn-secondary btn-round btn-trans text-white" role="button">HIRE GREG »</a>
          <a href="$Link" class="text-white float-right">Read More about Greg's Mission</a>
        </div>
      </div>
    </div>
  </section>
<% end_with %>

<% with Page('what-clients-say') %>
  <section class="bg-faded py-2" id="$URLSegment">
    <div class="container">
      <h2 class="section-title mt-3">$Heading</h2>
      <hr>
      <div class="row">
        <div class="card-deck-wrapper greg-nordfelt-clients">
          <div class="card-deck">
            <% loop Children.Limit(3) %>
              <div class="card col-sm-12 col-md-4 fadeInOut">
                <div class="text-xs-center" data-mh="clients-logos">
                  <img class="card-img-top img-fluid" src="$ClientImg.SetWidth(240).URL" alt="$ClientImage.TITLE" alt="$ClientImg.TITLE">
                </div>
                <div class="card-block">
                  <blockquote class="card-blockquote" data-mh="client-testimonials">
                    "$Content.FirstParagraph"
                    <% if $MoreLink %>
                      <p><a href="$MoreLink">Read More</a></p>
                      <% else_if $ClientFile %>
                        <p><a href="$ClientFile.URL" target="_blank">Read More</a></p>
                      <% end_if %>
                    </blockquote>
                  </div>
                  <div class="card-footer bg-white signature">
                    <small class="text-muted">
                      <strong>$FullName</strong><br>
                      <em>$Position</em><br>
                      $Client
                    </small>
                  </div>
                </div>
              <% end_loop %>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12 text-sm-right py-2">
            <a href="/what-clients-say/">View All Recommendation Letters</a>
          </div>
        </div>

      </div>
    </section>
  <% end_with %>

  <% with Page('events') %>
    <section class="parallax-window py-2" data-parallax="scroll" data-image-src="$BgImage.URL" id="$URLSegment">
      <div class="container">
        <h2 class="section-title text-white mt-3">$Heading</h2>
        <hr class="bd-white">
        <div class="row py-1">
          <div id="upcoming-events-list" role="tablist" aria-multiselectable="true">
            <% loop LatestEvents.Limit(5) %>
              <div class="card bg-opaque mb-2 fadeInOut">
                <div class="card-header bg-opaque" role="tab" id="events-$ID">
                  <h3 class="mb-0 cursor" data-toggle="collapse" data-parent="#upcoming-events-list" data-target="#events-$URLSegment" aria-expanded="true" aria-controls="events-$URLSegment">
                    $Head <small class="text-white sponsor float-right">
                      On $Date.Format('F jS, Y')
                      <% if $Time.Format('g:i a') = "12:00 am" %>
                      (All Day)
                    <% else %>
                      ($Time.Format('g:i a'))
                    <% end_if %></small>
                  </h3>
                </div>
                <div id="events-$URLSegment" class="collapse<% if $First %> in show<% end_if %>" role="tabpanel" aria-labelledby="events{$ID}Label">
                <div class="card-block row">
                  <div class="col-sm-4">
                    <a href="$Link">
                      <img src="$Img.SetHeight(175).URL" class="img-fluid" alt="$Img.TITLE">
                    </a>
                    <br/>
                    <span class="float-right float-xs-center">
                      Sponsored by $Sponsor
                    </span>
                  </div>
                  <div class="col-sm-8">
                    <div>$Info</div>
                    <hr class="bd-white">
                    <div class="row">
                      <div class="col-sm-6">
                        <p>
                          Place: <strong>$Place</strong> <br/>
                          Date: <strong>$Date.Format('F jS, Y')</strong><br>
                          Time: <strong>
                            <% if $Time.Format('g:i a') = "12:00 am" %>
                            All Day
                          <% else %>
                            $Time.Format('g:i a')
                          <% end_if %>
                        </strong>
                      </p>

                    </div>
                    <div class="col-sm-6">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <% end_loop %>
      </div>
    </div>
    <div class="row fadeInOut">
      <div class="col-sm-12 text-sm-right py-2">
        <a href="$Link" class="text-white">View All Events</a>
      </div>
    </div>
  </div>
</section>
<% end_with %>

<section class="bg-white py-3">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <h2 class="section-title mt-3">Important Information</h2>
        <hr>
        <div class="card-deck-wrapper mb-3 fadeInOut">
          <div class="card-deck">
            <div class="card border-0 no-shadow col-sm-5 col-md-4 text-center">
              <% if $NewsTitle %>
                <h4 class="h3 mb-1">$NewsTitle</h4>
              <% end_if %>
              <% if $NewsSubTitle %>
                <hr class="top-line my-1"/>
                <h4 class="h5 mt-1 mb-3">$NewsSubTitle</h4>
              <% end_if %>
              <% if $NewInfoImages.Sort('RAND').Limit(1) %>
                <% loop $NewInfoImages  %>
                  <img class="img-fluid book-cover<% if $NewsTitle && $NewsSubTitle && $ActionLink %><% else %> w-75<% end_if %>" src="$URL" alt="Card image cap">
                <% end_loop %>
              <% else %>
                <img class="img-fluid" src="http://3.bp.blogspot.com/-tCI0EpMjT8c/ULY7ZYQpx_I/AAAAAAAAAdU/bwAeN4XNTuw/s1600/book.png" alt="Card image cap">
              <% end_if %>
              <% if $ActionLink %>
                <br>
                <a href="$ActionLink" class="btn btn-primary btn-block" target="_blank">$ActionLabel</a>
              <% end_if %>
            </div>
            <div class="card col-sm-7 col-md-8">
              <%-- <div class="card-header">
              <h4 class="card-title h3">$NewsTitle</h4>
            </div> --%>
            <div class="card-block small-text">
              $NewsletterInfo
            </div>
            <div class="card-footer card-trans">
              <form action="/newsletter-subscription/Form" method="post" class="form-horizontal" enctype="application/x-www-form-urlencoded">
              <input type="hidden" name="SecurityID" value="$SecurityID" />
              $SecurityToken
              <h4>Enter below to subscribe:</h4>
              <div class="form-group mb-0">
                <div class="input-group">
                  <input type="text" class="form-control" name="FirstName" placeholder="First Name">
                  <input type="text" class="form-control" name="Surname" placeholder="Last Name">
                  <input type="text" class="form-control" name="Email" placeholder="E-mail">
                  <span class="input-group-btn">
                    <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-send"></i></button>
                  </span>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</section>

<% with Page('gregs-blog') %>
  <section class="parallax-window py-2" data-parallax="scroll" data-image-src="$BgImage.URL" id="$URLSegment" data-min-height="800px">
    <div class="container blogs">
      <h2 class="section-title text-white mt-3">$Heading</h2>
      <hr class="bd-white">
      <div class="card-group py-1">
        <% loop $AllBlogPages.Limit(12) %>
          <div class="example-2 card p-0">
            <div class="wrapper" style="background-image:url($FeatImage.URL);">
            <div class="header">
              <div class="date">
                <span class="day">$PostDate.format('d')</span>
                <span class="month">$PostDate.format('M')</span>
                <span class="year">$PostDate.format('Y')</span>
              </div>
            </div>
            <div class="data">
              <div class="content overlay">
                <span class="author">
                  <% if $Author %>By $Author<% end_if %>
                </span>
                <h1 class="title"><a href="$Link">$Title</a></h1>
                <p class="text hover">$Excerpt.LimitWordCount(30,'...')</p>
                <a href="$Link" class="button">Read more</a>
              </div>
            </div>
          </div>
        </div>
      <% end_loop %>
    </div>
    <div class="text-right text-xs-center my-2">
      <a href="$Link" class="text-white">Read All Blog Posts</a>
    </div>
  </div>
</section>
<% end_with %>
<% include HireMe ID='hire-me-recaptcha' %>
