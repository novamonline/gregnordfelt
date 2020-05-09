<div class="modal fade" id="$modalID" tabindex="-1" role="dialog" aria-labelledby="{$modalID}Label" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="{$modalID}Label">$modalTitle</h4>
      </div>
      <div class="modal-body">
        <% include $$modalContent %>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>