<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" http-equiv="description" content="<% if MetaDescription %>$MetaDescription<% else %>$Title <% with GetHomePage %>$MetaDescription<% end_with %><% end_if %>" />
  <% if $MetaKeywords || Page('home').MetaKeywords %>
    <meta name="keywords" http-equiv="keywords" content="<% if MetaKeywords %>$MetaKeywords<% else %>$Title <% with GetHomePage %>$MetaKeywords<% end_with %><% end_if %>" />
  <% end_if %>
  <title>Greg Nordfelt :: <% if $Title %>$Title<% else %>Welcome<% end_if %></title>
  <% include Icons IconFolder=$ThemeDir %>
  <style>  .fadeInOut{opacity: 1;}</style>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>

<body data-spy="scroll" data-target="#greg-nordfelt-navbar">
  $StatusMessage
  <% include Header %>

  <main>
    $Header
    $Layout
    $Footer
  </main>

  <% include Footer %>

  <%-- <div class="alert-wrapper">
    <% if StatusMessage %>
      <% with StatusMessage %>
        <div class="alert alert-<% if $Status == 'error' %>danger<% else %>$Status<% end_if %> alert-dismissible fade show" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <p>
            <strong><% if $Status == 'danger' %>Error<% else %>$Status<% end_if %></strong> $Message $message $URLSegment
          </p>
        </div>
      <% end_with %>
    <% end_if %>
  </div> --%>
  <script src="https://www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit" async defer></script>
  <script type="text/javascript">
  var CaptchaCallback = function() {
    $('.g-recaptcha').each(function(index, el) {
      grecaptcha.render(el, {'sitekey' : $SiteConfig.gRecaptchaKey});
    });
  };
</script>
  <script>
   (function($){
     function captchaMe()
     {
       console.log(this);
       document.getElementById("hire-me-form").submit();
     }

     $.fn.SubmitValidForm = function(elem)
     {
       grecaptcha.execute();
       console.log(this, elem);
     }
   })(jQuery);
  </script>
  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', '$SiteConfig.gAnalytics', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
