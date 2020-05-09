<div class="modal fade" id="hire-greg-nordfelt">
  <div class="modal-dialog modal-lg" role="document">
    <form class="modal-content" action="/contact/hireGregNordfelt" method="post" id="hire-greg-form" novalidate>
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      <h4 class="modal-title" id="hireGregNordfeltLabel">How Can Greg Help You?</h4>
    </div>
    <div class="modal-body">
      <input type="hidden" name="SecurityID" value="$SecurityID">
      <div class="form-group">
        <p class="mb-0">Tell Greg about your event</p>
        <div class="row">
          <div class="col">
            <input type="text" name="EventName" class="form-control" placeholder="e.g. Employee Retreat">
            <span class="help-block form-control-feedback"></span>
          </div>
          <div class="col-sm-4">
            <input name="EventDate" data-provide="datepicker" type="text" class="form-control" placeholder="" value="">
            <span class="help-block form-control-feedback"></span>
          </div>
        </div>
      </div>
      <div class="form-group">
        <p class="mb-0">Where will this event occur?</p>
        <input type="text" name="EventPlace" class="form-control" placeholder="Address, City, State and Zip" required>
        <span class="help-block form-control-feedback"></span>
      </div>
      <div class="form-group">
        <p>Purpose or goals of your meeting</p>
        <textarea name="EventInfo" class="form-control" placeholder="Purpose of your request" required></textarea>
        <span class="help-block form-control-feedback"></span>
      </div>
      <div class="form-group">
        <p class="mb-0">How should Greg reply to you?</p>
        <div class="row">
          <div class="col">
            <input type="text" name="FirstName" class="form-control" placeholder="First Name" required>
            <span class="help-block form-control-feedback"></span>
          </div>
          <div class="col">
            <input type="text" name="Surname" class="form-control" placeholder="Last Name">
            <span class="help-block form-control-feedback"></span>
          </div>
        </div>
      </div>
      <div class="form-group">
        <div class="row">
          <div class="col">
            <input type="text" name="Phone" class="form-control" placeholder="Phone Number">
            <span class="help-block form-control-feedback"></span>
          </div>
          <div class="col">
            <input type="email" name="Email" class="form-control" placeholder="Email Address" required>
            <span class="help-block form-control-feedback"></span>
          </div>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <div class="row">
        <div class="col">
          <div id="$ID" class="g-recaptcha" data-size="normal" data-sitekey="$SiteConfig.gRecaptchaKey"></div>
        </div>
        <div class="col">
          <button type="submit" class="btn btn-success">Hire Greg</button>
        </div>
      </div>
    </div>
    </form>
  </div>
</div>
