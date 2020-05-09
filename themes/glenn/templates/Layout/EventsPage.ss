<section>
	<%-- <h2 class="section-title mt-3">$Title</h2> --%>
	<%-- <hr> --%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">

				<div class="card-block row">
					<div class="col-sm-5">
						<img src="$Img.SetHeight(175).URL" class="img-fluid" alt="$Img.TITLE">
					</div>
					<div class="col-sm-7">
						<div>$Info</div>
						<hr class="bd-white">
						<div class="row">
							<div class="col-sm-12 bg-dark text-white">
								<p>
									Place: <strong>$Place</strong> |
									Date: <strong>$Date.Format('F jS, Y')</strong> <br>
									Time: <strong>$Time.Format('g:i a')</strong>
								</p>

							</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
				<div class="col-sm-12">
					<%-- <% if $Content %>
						$Content
					<% end_if %> --%>
				</div>
				</div>
			</div>
		</div>
	</div>
</section>
