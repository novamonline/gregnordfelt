<section id="py-3 bg-primary">
  <div class="container">
    <% if $Form %>
      <h2 class="text-xs-center">Authentication</h2>
    <% end_if %>
    <div class="row">
      <div class="col-sm-6 offset-sm-3">
        $Form
        $CommentsForm
        $Content
      </div>
    </div>
  </div>
</section>
