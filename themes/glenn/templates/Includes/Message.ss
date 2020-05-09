<% with $StatusMessage %>
  <div class="alert-wrapper">
    <div class="alert with alert-<% if $Status == 'error' %>danger<% else_if not $Status %>info<% else %>$Status<% end_if %> alert-dismissible fade show" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$('.alert-wrapper').remove();">
        <span aria-hidden="true">&times;</span>
      </button>
      <p class="mb-0 text-center">
        <span class="float-left">
          <strong>
            <% if $Status == 'danger' %>Error<% else_if not $Status %>$Status <% else %>!<% end_if %>
          </strong>
        </span>
        <span class="message">
          <% if $Message %> $Message<% else %>Request received and submitted please check your email for more information!<% end_if %>
        </span>
      </p>
    </div>
  </div>
  <% end_with %>
