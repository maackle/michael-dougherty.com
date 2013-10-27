(function() {
  $(function() {
    return $('.smooth-anchor').click(function(e) {
      var $link, target;
      $link = $(this);
      target = $.attr(this, 'href').substr(1);
      $('html, body').animate({
        scrollTop: $("[name='" + target + "']").offset().top - 30
      }, 500);
      return false;
    });
  });

}).call(this);
