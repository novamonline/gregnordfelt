<div id="blogs-filter-group" role="tablist" aria-multiselectable="true">
  <div class="card">
    <div class="card-header bg-inverse text-white" role="tab" id="blogs-filter-heading-Zero">
      <h4 class="mb-0">
        <a data-toggle="collapse" data-parent="#blogs-filter-group" href="#blogs-filter-group-Zero" aria-expanded="true" aria-controls="blogs-filter-group-Zero">
          Search
        </a>
      </h4>
    </div>

    <div id="blogs-filter-group-Zero" class="collapse show" role="tabpanel" aria-labelledby="blogs-filter-heading-Zero">
      <div class="card-block py-2">
        <form action="/blogs/searchForm" method="post">
          <fieldset class="form-group mb-0">
            <div class="input-group input-group-sm">
              <input type="text" class="form-control" name="searchfield" placeholder="Type to search...">
              <span class="input-group-btn">
                <button type="submit" name="action_results" class="btn btn-secondary"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header bg-inverse text-white" role="tab" id="blogs-filter-heading-One">
      <h4 class="mb-0">
        <a data-toggle="collapse" data-parent="#blogs-filter-group" href="#blogs-filter-group-One" aria-expanded="false" aria-controls="blogs-filter-group-One">
          Categories
        </a>
      </h4>
    </div>

    <div id="blogs-filter-group-One" class="collapse" role="tabpanel" aria-labelledby="blogs-filter-heading-One">
      <div class="card-block py-2">
        <% loop $Categories %>
          <a href="?Cat=$Key">$Value</a><br/>
        <% end_loop %>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header bg-inverse text-white" role="tab" id="blogs-filter-heading-Two">
      <h5 class="mb-0">
        <a class="collapsed" data-toggle="collapse" data-parent="#blogs-filter-group" href="#blogs-filter-group-Two" aria-expanded="false" aria-controls="blogs-filter-group-Two">
          Tags
        </a>
      </h5>
    </div>
    <div id="blogs-filter-group-Two" class="collapse" role="tabpanel" aria-labelledby="blogs-filter-heading-Two">
      <div class="card-block">
        <% loop $Parent.KeyPhrases.Items %>
          <a href="?tag=#$Key" class="btn btn-xs btn-outline-primary">$Value</a>
        <% end_loop %>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header bg-inverse text-white" role="tab" id="blogs-filter-heading-Three">
      <h5 class="mb-0">
        <a class="collapsed" data-toggle="collapse" data-parent="#blogs-filter-group" href="#blogs-filter-group-Three" aria-expanded="false" aria-controls="blogs-filter-group-Three">
          Content
        </a>
      </h5>
    </div>
    <div id="blogs-filter-group-Three" class="collapse" role="tabpanel" aria-labelledby="blogs-filter-heading-Three">
      <div class="card-block list-group p-0">
        <a class="list-group-item justify-content-between py-1" href="?type=related">
          Related Blogs
          <span class="badge badge-default badge-pill">14</span>
        </a>
        <a class="list-group-item justify-content-between py-1" href="?type=recent">
          Recent Blogs
          <span class="badge badge-default badge-pill">2</span>
        </a>
        <a class="list-group-item justify-content-between py-1" href="?type=popular">
          Popular Blogs
          <span class="badge badge-default badge-pill">1</span>
        </a>
      </div>
    </div>
  </div>
</div>
<hr>
<h3>  Latest Blogs... </h3>
<div class="item-group">
  <% loop $FilteredBlogs %>
    <a class="list-group-item p-1" href="$Link">
      <% if $FeatImage %>
        <img class="w-md-33 w-sm-50 w-xs-100 float-left" src="$FeatImage.CroppedImage(300,250).URL" alt="">
      <% end_if %>
      <span class="p-1 w-md-66 w-sm-50 w-xs-100"><strong>$Title</strong></span>
    </a>
<% end_loop %>
</div>
