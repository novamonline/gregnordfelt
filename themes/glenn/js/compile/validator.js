(function($){

  $(function(){

    $(':input', 'form').each(function(){
      var FormGroup = $(this).closest('.form-group, .col');
      var HelpBlock = $(this).next('.help-block');

      $(this).on('keyup blur change', function(){
        if(this.value.length > 0){
          FormGroup.removeClass('has-danger');
          HelpBlock.text('');
        }
      });
    });

    $('form').submit(function(e){
      var inputValues = $(this).find(':input');
      inputValues.each(function(){
        var FormGroup = $(this).closest('.form-group, .col');
        var HelpBlock = $(this).next('.help-block');
        if(this.required && this.value.length == 0){
          FormGroup.addClass('has-danger');
          HelpBlock.text('This field is required');
          console.log(this);
          e.preventDefault();
        }
      });
    });

  });



})(jQuery);
