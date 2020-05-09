
<section class="">
  <div class="container py-3">
    <div class="row py-3">
    <h2 class=" my-2">Upcoming Events</h2>
     <div id="upcoming-events-list" role="tablist" aria-multiselectable="true">
      <% loop LatestEvents.Reverse %>
      <div class="card mb-2">
        <div class="card-header" role="tab" id="events-$ID">
          <h3 class="mb-0 cursor" data-toggle="collapse" data-parent="#upcoming-events-list" data-target="#events-$URLSegment" aria-expanded="true" aria-controls="events-$URLSegment">
            $Head <small class=" sponsor float-xs-right float-right">Sponsored by $Sponsor</small>
          </h3>
        </div>
        <div id="events-$URLSegment" class="collapse<% if $First %> in show<% end_if %>" role="tabpanel" aria-labelledby="events{$ID}Label">
          <div class="card-block row">
            <div class="col-sm-4">
              <img src="$Img.SetHeight(175).URL" class="img-fluid" alt="$Img.TITLE">
            </div>
            <div class="col-sm-8">
              <div>$Info</div>
              <hr class="bd-white">
              <div class="row">
                <div class="col-sm-6">
                  <p>
                    Place: <strong>$Place</strong> <br/>
                    Date: <strong>$Date.Format('F jS, Y')</strong><br>
                    Time: <strong>$Time.Format('g:i a')</strong>
                  </p>

                </div>
                <div class="col-sm-6">
                  <% if $Content %>
                  <p class="float-right">
                    <a href="$Link" class="btn btn-sm btn-primary">View Event</a>
                  </p>
                  <% end_if %>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <% end_loop %>
    </div>

    <hr class="my-3">
    <h2 class=" my-2">Previous Events</h2>
    <div id="previous-events-list" role="tablist" aria-multiselectable="true">
      <% loop PreviousEvents.Sort('ID', 'DESC') %>
      <div class="card mb-2">
        <div class="card-header" role="tab" id="events-$ID">
          <h3 class="mb-0 cursor" data-toggle="collapse" data-parent="#previous-events-list" data-target="#events-$URLSegment" aria-expanded="true" aria-controls="events-$URLSegment">
            $Head <small class=" sponsor float-xs-right float-right">Sponsored by $Sponsor</small>
          </h3>
        </div>
        <div id="events-$URLSegment" class="collapse<% if $UpcomingEvents.Count == 0 && $First %> in show<% end_if %>" role="tabpanel" aria-labelledby="events{$ID}Label">
          <div class="card-block row">
            <div class="col-sm-4">
              <img src="$Img.SetHeight(175).URL" class="img-fluid" alt="$Img.TITLE">
            </div>
            <div class="col-sm-8">
              <div>$Info</div>
              <hr class="bd-white">
              <div class="row">
                <div class="col-sm-6">
                  <p>
                    Place: <strong>$Place</strong> <br/>$UpcomingEvents.Count
                    Date: <strong>$Date.Format('F jS, Y')</strong><br>
                    Time: <strong>$Time.Format('g:i a')</strong>
                  </p>

                </div>
                <div class="col-sm-6">
                  <% if $Content %>
                  <p class="float-right">
                    <a href="$Link" class="btn btn-sm btn-primary">View Event</a>
                  </p>
                  <% end_if %>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <% end_loop %>
    </div>
  </div>
</div>
</section>

<section id="past-events">

</section>
