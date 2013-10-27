
$ ->
	$('.smooth-anchor').click (e) ->
		$link = $(this)
		target = $.attr(this, 'href').substr(1)
		$('html, body').animate
			scrollTop: $("""[name='#{ target }']""").offset().top - 30
		, 500
		false