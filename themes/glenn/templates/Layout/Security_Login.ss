<section>

  <div class="container">
    <div class="row">
      <div class="col-sm-6 offset-sm-3">
        <div class="py-3 my-3">


          <form id="MemberLoginForm_LoginForm" action="/Security/LoginForm" method="post" enctype="application/x-www-form-urlencoded">
          <input type="hidden" name="SecurityID" value="$SecurityID" class="hidden" id="MemberLoginForm_LoginForm_SecurityID">
          <input type="hidden" name="AuthenticationMethod" value="MemberAuthenticator" class="hidden" id="MemberLoginForm_LoginForm_AuthenticationMethod">
          <input type="hidden" name="BackURL" value="/admin/pages" class="hidden" id="MemberLoginForm_LoginForm_BackURL">
          <input type="hidden" name="BackURL" value="/admin/pages" class="hidden" id="MemberLoginForm_LoginForm_BackURL">
          <div class="card">
            <div class="card-block">
              <h4 class="card-title text-xs-center form-signin-heading"><i class="fa fa-lock float-xs-left"></i> Administrator Access</h4>
              <hr>
            <div class="form-group">
              <label for="MemberLoginForm_LoginForm_Email" class="sr-only">Email address</label>
              <input type="text" id="MemberLoginForm_LoginForm_Email" name="Email" class="form-control" placeholder="Email address" required autofocus>
            </div>
            <div class="form-group">
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" id="MemberLoginForm_LoginForm_Password" name="Password" class="form-control" placeholder="Password" required>
            </div>
            <div class="checkbox">
              <label for="MemberLoginForm_LoginForm_Remember">
                <input id="MemberLoginForm_LoginForm_Remember" type="checkbox" name="Remember" value="1"> Remember me
              </label>
            </div>
            <div class="form-group">
              <button id="MemberLoginForm_LoginForm_action_dologin" name="action_dologin" class="btn btn-primary btn-block" type="submit">Sign in</button>
            </div>
          </div>
        </div>
        </form>
        <p class="text-xs-center" id="ForgotPassword"><a href="Security/lostpassword">I've lost my password</a></p>
      </div>
    </div>
  </div>
</div>
</section>
