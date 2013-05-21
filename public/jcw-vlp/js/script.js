$(function(){
	$('#left-nav-category li').children('.category-list').delay(1000).slideToggle('1000');
	$('.category-title').click(function(){
		$(this).parent('div').next('.category-list').slideToggle('1000');
		$(this).parent('.white').toggleClass('border-bottom-grey');
	});
});

