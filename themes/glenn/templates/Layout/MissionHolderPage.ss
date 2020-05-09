<section>
	<div class="container">
		<% loop AllChildren %>
		    <div class="row">
			<div class="col-sm-12">
			<h2>$Title</h2>
				<img src="$FeatImage.MaxHeight(200).URL" alt="" class="img-fluid mx-auto">
				$Content
			</div>
		</div>
		<hr class="my-3">
		<% end_loop %>
	</div>
</section>
