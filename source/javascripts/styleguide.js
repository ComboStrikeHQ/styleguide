$(function() {
  // trigger change event on toggle buttons (containing hidden checkbox)
  $('.toolbar .checkbox input').change(function() {
    return $(this).parents('li.btn').toggleClass('active', this.checked);
  });
  $('.toolbar .checkbox input').trigger('change');

  // sidebar
  $('.sidebar').affix({
    offset: {
      top: 0
    }
  });
  $body = $(document.body);
  navHeight = $('.navbar').outerHeight(true) + 10;
  $body.scrollspy({
    target: '.left-col',
    offset: navHeight
  });
});
