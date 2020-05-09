<%-- <section class="bg-inverse text-white">
	<div class="container">
		<div class="row">
			<div class="col hidden-sm-down">
				<h1 class="mt-3 mb-0 uppercase text-center">$Heading</h2>
					<hr class="mt-3 mb-0" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					$Content
				</div>
				<% if $FeatImage %>
					<div class="col-sm-7">
						<figure class="figure w-100 my-0">
							<img src="$FeatImage.SetHeight(900).URL" class="img-fluid w-100 img-rounded" alt="$TITLE">
					</figure>
				</div>
			<% end_if %>
		</div>
	</div>
</section> --%>

<section class="py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-8 blogs">
				<div class="row">
					<% loop $AllBlogPages.Limit(12) %>
						<div class="example-2 card p-0 col-md-12 col-lg-6">
							<div class="wrapper" style="background-image:url($FeatImage.URL);">
							<div class="header">
								<div class="date">
									<span class="day">12</span>
									<span class="month">Aug</span>
									<span class="year">2016</span>
								</div>
								<%-- <ul class="menu-content">
								<li>
								<a href="#" class="fa fa-bookmark-o"></a>
							</li>
							<li><a href="#" class="fa fa-heart-o"><span>18</span></a></li>
							<li><a href="#" class="fa fa-comment-o"><span>3</span></a></li>
						</ul> --%>
					</div>
					<div class="data">
						<div class="content overlay">
							<span class="author">$Author</span>
							<h1 class="title"><a href="$Link">$Title</a></h1>
							<p class="text hover">$Excerpt.LimitWordCount(30,'...')</p>
							<a href="$Link" class="button">Read more</a>
						</div>
					</div>
				</div>
			</div>
		<% end_loop %>
	</div>
</div>
<div class="col-md-4">
	<% include BlogsFilter Categories=$BlogCategories.Items, FilteredBlogs=$AllBlogPages %>
</div>
</div>
</div>
</section>
