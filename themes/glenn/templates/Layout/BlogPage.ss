<section class="bg-inverse text-white">
	<div class="container">
		<div class="row">
			<div class="col hidden-sm-down">
				<h1 class="mt-3 mb-0 uppercase text-center">$Title</h2>
					<hr class="mt-3 mb-0" />
				</div>
			</div>
			<div class="row h-100">
				<div class="col my-auto">
					<p class="lead">
						<br>
						<em>
							<% if $Excerpt %>
								<strong>$Excerpt</strong>
							<% else %>
								$Content.LimitWordCount(100,'...')
							<% end_if %>
						</em>
					</p>
				</div>
				<% if $FeatImage %>
					<div class="col-sm-7">
						<figure class="figure w-100 my-0">
							<img src="$FeatImage.CroppedImage(1800,1000).URL" class="img-fluid w-100 img-rounded" alt="$TITLE">
					</figure>
				</div>
			<% end_if %>
		</div>
		<div class="row">
			<div class="col">
				<hr class="mt-0 mb-3" />
				<div class="row">
					<div class="col mr-auto mb-2">
						<span>Posted on $Date.Format('m/d/Y') by $Author</span>
					</div>
					<div class="col ml-auto text-right">
						<%-- <!-- Go to www.addthis.com/dashboard to customize your tools --> <div class="addthis_inline_share_toolbox"></div> --%>
						<% include PageShareLinks %>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container my-3">
		<div class="row">
			<div class="col-md-9">
				<div class="content">
					$Content
				</div>
				<div class="author">
				</div>
			</div>

			<div class="col-md-3">
				<% include BlogsFilter Categories=$Parent.BlogCategories.Items, FilteredBlogs=$Parent.AllChildren %>
		</div>
	</div>
</div>
</section>
