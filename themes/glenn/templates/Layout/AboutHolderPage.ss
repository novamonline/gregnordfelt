<% with Page('home') %>
<% include OwlSlider SliderContent=$SliderImages %>
<% end_with %>
<section class="bg-dark">
<div class="container">
  <div class="col-sm-12">$FeatImg</div>
</div>
</section>
<% loop Children %>
  <section>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          $Content
        </div>
      </div>
    </div>
  </section>
<% end_loop %>
