$(document).ready( function() {

	// $('.button').live('click',function() {
	// 	$(this).closest('form').submit();
	// });
	
	$('.button').live('click',function() {
		$(this).closest('form').submit();
		
	});
	

	// $("#q_belgian_present").change(function () {
	//     $.post('recommendation.html.erb', function(data) {
	//        $('#checkbox_section').html(data);
	//     });
	// })
	


	$("#q_acidic_present").change(function() {
		 $("#label_acidic_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_clean_present").change(function() {
		 $("#label_clean_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_creamy_present").change(function() {
		 $("#label_creamy_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_crisp_present").change(function() {
		 $("#label_crisp_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_hoppy_present").change(function() {
		 $("#label_hoppy_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_malty_present").change(function() {
		 $("#label_malty_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_rich_present").change(function() {
		 $("#label_rich_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_smooth_present").change(function() {
		 $("#label_smooth_present").toggleClass("checked", this.checked)
	}).change();

	$("#q_bitter_present").change(function() {
		 $("#label_bitter_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_earthy_present").change(function() {
		 $("#label_earthy_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_sour_present").change(function() {
		 $("#label_sour_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_spicy_present").change(function() {
		 $("#label_spicy_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_sweet_present").change(function() {
		 $("#label_sweet_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_tart_present").change(function() {
		 $("#label_tart_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_banana_present").change(function() {
		 $("#label_banana_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_caramel_present").change(function() {
		 $("#label_caramel_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_citrus_present").change(function() {
		 $("#label_citrus_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_chocolate_present").change(function() {
		 $("#label_chocolate_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_cloves_present").change(function() {
		 $("#label_cloves_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_coffee_present").change(function() {
		 $("#label_coffee_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_floral_present").change(function() {
		 $("#label_floral_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_fruity_present").change(function() {
		 $("#label_fruity_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_grapefruit_present").change(function() {
		 $("#label_grapefruit_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_lemon_present").change(function() {
		 $("#label_lemon_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_nutty_present").change(function() {
		 $("#label_nutty_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_pine_present").change(function() {
		 $("#label_pine_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_smoky_present").change(function() {
		 $("#label_smoky_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_toffee_present").change(function() {
		 $("#label_toffee_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_vanilla_present").change(function() {
		 $("#label_vanilla_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_wheat_present").change(function() {
		 $("#label_wheat_present").toggleClass("checked", this.checked)
	}).change();
	
	$("#q_belgian_present").change(function() {
		 $("#label_belgian_present").toggleClass("checked", this.checked)
	}).change();
});