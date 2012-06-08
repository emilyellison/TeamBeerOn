$(document).ready( function() {

	// Submit the form when someone selects a bar. 
	
  $('#keyword').live('change',function() {
      $(this).closest('form').submit();
  });
	
	// Submit the form when someone selects a style. 
	
	$('#q_style_cont').live('change',function() {
      $(this).closest('form').submit();
  });
		
	// Submit the form when someone checks a checkbox.
	
	$('.button').live('click',function(e) {
		  var z = $(this).next().next();
			var v = z.attr('checked');
			z.attr('checked', !v);
			$(this).closest('form').submit();
			e.preventDefault();
	});
	
	$('.checked').live('click',function(e) {
		  var z = $(this).next().next();
			var v = z.attr('checked');
			z.removeAttr('checked', v);
			$(this).closest('form').submit();
			e.preventDefault();
	});
		
});