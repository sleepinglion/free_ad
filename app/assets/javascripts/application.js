// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require masonry/masonry.min
//= require turbolinks
//= require plugin/jquery.tagcanvas.min.js

//window['CKEDITOR_BASEPATH']='/ckeditor/';

$(document).ready(function() {
	$('.grid').masonry({
		  // set itemSelector so .grid-sizer is not used in layout
		  itemSelector: '.article',
		  // use element for option
		  columnWidth: '.article',
		  percentPosition: true
	});
	
	$(".btn-share").click(function(){
		var url=window.location.href+'view/'+$(this).parent().find('input:first').val();
		$("#sns_share a:first").attr('href','https://www.facebook.com/sharer/sharer.php?u='+url);
		$("#sns_share a:eq(1)").attr('href','https://twitter.com/home?status='+url);
		$("#sns_share a:eq(2)").attr('href','https://plus.google.com/share?url='+url);
		$("#sns_share_url").val(url);	
	});
	
	if(!$('#myCanvas').tagcanvas({
	     outlineThickness : 1,
	     maxSpeed : 0.05,
	 			textFont: null,
	 			textColour: null,
	 			weight: true,   
	     depth : 1
	   },'tags')) {
	     // TagCanvas failed to load
	     $('#myCanvasContainer').hide();
	     $("#tags ul").css({'margin':0,'padding':0,'list-style':'none'});
	     $("#tags ul li").css({'float':'left','margin':'0 10px'});     
	  }
	  
	$('#myModal').on('shown.bs.modal', function () {
		$("#sns_share_url").focus();
	});
	
	$("a.a_link").click(function(){
		$(this).parent().parent().find(".link_more").click();
		return false;
	});
	
	$(".link_more").click(function(){
		var ll=$(this).parent();
		var lll=$(this).parent().parent();
		var content_layer=ll.find('.content_text_layer');
		var a_link=ll.find('.a_link');
		var more=ll.find('.link_more');
		var aid=a_link.attr('href').split('/').pop();
		
	//	var h3=lll.find('h3').clone(false);
	//	var h3text=h3.find('a').text();
	//	h3.text(h3text).find('a').remove();
	//	lll.find('h3').replaceWith(h3);
		if(content_layer.is(':visible')) {
			content_layer.slideUp(function(){
				a_link.fadeIn();
				more.text('더보기');
				$('#sl_community_index .grid').masonry();				
			});
			
		} else {
			content_layer.load('/view/'+aid,function(){
				a_link.fadeOut();
				more.text('닫기');
				content_layer.slideDown(function(){
					$('#sl_community_index .grid').masonry();
				});
			});
		}
	});	

	$(".comment_btn").click(function(){
		var pp=$(this).parent().parent().parent();
		if(pp.find('.comments').is(':visible')) {
			pp.find('.comments').slideUp(function(){
				$('#sl_community_index .grid').masonry();
			});			
		} else {
			$('.comments:visible').slideUp();			
			pp.find('.comments').slideDown(function(){
				$('#sl_community_index .grid').masonry();		
			});
		}
	});
	
	$(".recommend_form").submit(function(){
		var form=$(this);
		$.post($(this).attr('action'),{'id':$(this).find('input[name="id"]').val()},function(data){
			if(data.result=='success') {		
				form.find(".recommend_count").text(Number(form.find(".recommend_count").text())+1);
			} else {
				alert(data.message);
			}
		},'json');
		
		return false;
	});		
});
