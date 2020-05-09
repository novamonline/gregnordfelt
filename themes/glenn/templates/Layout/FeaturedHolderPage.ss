<section>
  <div class="container">

  </div>
</section>
<section>
  <div class="container">
    <div class="card-columns my-3 py-3">
      <% loop AllChildren %>
        <div>
          <div class="card card-trans fadeInOut" data-mh="featurd-in">
            <div class="text-center m-3">
              <img class="img-fluid" src="$FeatureLogo.SetHeight(75).URL" alt="">
              <br>
              $Content
            </div>
          </div>
        </div>
      <% end_loop %>
    </div>
  </div>
</section>
