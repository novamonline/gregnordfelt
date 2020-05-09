<section class="inset-shadow py-3 mb-3">
  <div class="container my-3">
  </div>
</section>
<section class="mt-3">
<div class="container">

  <div class="card-columns">
    <% if $Services.Count %>
      <h2>Featured Services</h2>
    <% end_if %>
    <% loop Services %>
      <div class="card">
        <div class="card-title">
          <h4 class="card-title text-center">$Title</h4>
        </div>
        <div class="card-block">
          <img class="card-img-top img-fluid" src="$ItemImgs.First.URL" alt="Card image cap">
          <div class="card-text">$Content</div>
        </div>
      </div>
    <% end_loop %>
  </div>
</div>
<div class="container">
  <% if $Products.Count %>
    <h2>Featured Products</h2>
  <% end_if %>
  <div class="card-columns">
    <% loop Products %>
      <div class="card">
        <div class="card-title">
          <h4 class="card-title text-center">$Title</h4>
        </div>
        <div class="card-block">
          <img class="card-img-top img-fluid" src="$ItemImgs.First.URL" alt="Card image cap">
          <div class="card-text">$Content</div>
        </div>
      </div>  
    <% end_loop %>
  </div>
</div>
</section>
