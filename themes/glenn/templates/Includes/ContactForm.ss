<form action="contact/sendInquiry" method="post" class="form-horizontal row shadow-form light-form" novalidate>
<div class="col-md-6">
  <div class="form-group row">
    <div class="col-md-6"><input type="text" class="form-control" name="FirstName" placeholder="First Name" required></div>
    <div class="col-md-6"><input type="text" class="form-control" name="LastName" placeholder="Last Name" required></div>
  </div>
  <div class="form-group row">
    <div class="col-md-6"><input type="email" class="form-control" name="Email" placeholder="Email Address" required></div>
    <div class="col-md-6"><input type="text" class="form-control" name="Phone" placeholder="Phone Number"></div>
  </div>
  <div class="form-group">
    <input type="text" class="form-control" name="Subject" placeholder="Enter Message subject" required>
  </div>
  <div class="form-group">
    <div class="checkbox">
      <label>
        <input type="checkbox" name="saveContact" id="saveContact" value="1" checked>
        Save my contact info for future communications
      </label>
    </div>
    <div class="checkbox">
      <label>
        <input type="checkbox" name="saveContact" id="subecribeMe" value="1" checked>
        Subscribe me to your monthly newsletter
      </label>
    </div>
    <div class="radio">
      I prefer
      <label class="radio-inline">
        <input type="radio" name="comunicateBy" id="emailsOnly" value="emailsOnly">
        emails only
      </label>
      <label class="radio-inline">
        <input type="radio" name="comunicateBy" id="phoneOnly" value="phoneOnly">
        phone calls
      </label>
      <label class="radio-inline">
        <input type="radio" name="comunicateBy" id="emailPhone" value="emailPhone" checked>
        either/both
      </label>
      <label class="radio-inline">
        <input type="radio" name="comunicateBy" id="emailPhone" value="emailPhone">
        no contact
      </label>
    </div>
  </div>
</div>

<div class="col-md-6">
  <div class="form-group">
    <textarea class="form-control" name="Message" placeholder="Type your message..." rows="11"></textarea>
  </div>
</div>
<div class="col-md-6">
  <div class="form-group">
    <div id="contact-recaptcha" class="g-recaptcha" data-size="normal" data-sitekey="$SiteConfig.gRecaptchaKey"></div>
  </div>
</div>
<div class="col-md-6">
  <div class="form-group">
    <p class="text-center"><small>Your nformation is kept secure and confidential. We will not share it without your consent.</small></p>
    <%-- data-sitekey="6Letjy0UAAAAALdamdm850tX2K0auk-EmTJsvxPp"
    data-callback="grecaptcha.execute()" --%>
    <button type="submit" class="btn btn-primary btn-block">
    Send Message <i class="fa fa-send"></i></button>
  </div>
</div>

</form>
