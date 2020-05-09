<section class="bg-faded py-2" id="$URLSegment">
	<div class="container">
		<h2 class="section-title mt-3">$Title</h2>
		<hr>
		<div class="row">
			<% loop Children %>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="card mb-2 rounded">
					<div class="text-xs-center" data-mh="clients-logos">
						<img class="card-img-top img-fluid" src="$ClientImg.SetWidth(240).URL" alt="$ClientImage.TITLE">
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
			</div>
			<% end_loop %>
		</div>

	</div>
</section>