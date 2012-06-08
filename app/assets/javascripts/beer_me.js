$(document).ready( function() {

	// Submit the location form when someone selects a bar. 
	
  $('#keyword').live('change',function() {
      $(this).closest('form').submit();
  });
	
	// Submit the preference form when someone selects a style. 
	
	$('#q_style_cont').live('change',function() {
      $(this).closest('form').submit();
  });
		
	// Submit the preference form when someone checks a checkbox.
	
	$('.button').live('click',function(e) {
		  var z = $(this).next().next();
			var v = z.attr('checked');
			z.attr('checked', !v);
			$(this).closest('form').submit();
			e.preventDefault();
	});
	
	// Submit the preference form when someone unchecks a checkbox.
	
	$('.checked').live('click',function(e) {
		  var z = $(this).next().next();
			var v = z.attr('checked');
			z.removeAttr('checked', v);
			$(this).closest('form').submit();
			e.preventDefault();
	});
		
});