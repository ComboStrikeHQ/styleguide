$(function() {
  // add active class to top-level ancestor nav item
  $('.navbar .active').parents('li').addClass('active');

  // trigger change event on toggle buttons (containing hidden checkbox)
  $('.toolbar .checkbox input').change(function() {
    return $(this).parents('li.btn').toggleClass('active', this.checked);
  });
  $('.toolbar .checkbox input').trigger('change');
});
