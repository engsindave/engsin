// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require common
//= require live-comment-preview
//= require_self

// Fixes navbar to top after scrolling down
$(document).scroll(function(){
	var $navbar = $('.navbar');
	var $brand = $('.brand');
	var $body = $('body');
	var $header = $('#header');
	// If has not activated (has no attribute "data-top")
	if (!$navbar.attr('data-top')) {
		// If already fixed, then do nothing
		if ($navbar.hasClass('navbar-fixed-top')) return;
		// Remember top position
		var offset = $navbar.offset()
		$navbar.attr('data-top', offset.top);
	}
	if ($navbar.attr('data-top') - $navbar.outerHeight() + $navbar.height() <= $(this).scrollTop())
		$navbar.addClass('navbar-fixed-top'),
		$brand.css({'display':'inline'}),
		$body.css({'padding-top':$navbar.height()}),
		$header.css({'padding-bottom':$navbar.height()});
	else
		$navbar.removeClass('navbar-fixed-top'),
		$brand.css({'display':'none'}),
		$body.css({'padding-top':'0'}),
		$header.css({'padding-bottom':'10px'});
});
