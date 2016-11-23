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
//= require turbolinks
//= require_tree .

$.fn.scrollTo = function( target, options, callback ){
  if(typeof options == 'function' && arguments.length == 2){ callback = options; options = target; }
  var settings = $.extend({
    scrollTarget  : target,
    offsetTop     : 50,
    duration      : 500,
    easing        : 'swing'
  }, options);
  return this.each(function(){
    var scrollPane = $(this);
    var scrollTarget = (typeof settings.scrollTarget == "number") ? settings.scrollTarget : $(settings.scrollTarget);
    var scrollY = (typeof scrollTarget == "number") ? scrollTarget : scrollTarget.offset().top + scrollPane.scrollTop() - parseInt(settings.offsetTop);
    scrollPane.animate({scrollTop : scrollY }, parseInt(settings.duration), settings.easing, function(){
      if (typeof callback == 'function') { callback.call(this); }
    });
  });
};

$(document).ready(function() {

	var user_name=$("#user_name").val();
	var socket = io('http://27.101.100.158:8080');
	$('#chatting_form').submit(function() {
		var c_message=$('#m').val();
		if(c_message.length<1) {
			alert('메세지를 입력해주세요');
			return false;
		}
			
		socket.emit('chat message', {
			'user_name' : user_name,
			'message' : c_message
		});
		$('#m').val('').focus();
		$('html,body').scrollTo($('#messages li:last').offset().top);
		return false;
	});
	
	socket.on('news', function(msg) {
		$('#messages li:first').text('경기도 채팅 서버에 접속되었습니다.').css('color','#333');
		$.each(msg.list,function(index,value){
			$('#messages').append($('<li>').text(value.user_name + ' : ' + value.message));
		});
		$('#m').focus();	
	});
	
	socket.on('chat message', function(msg) {
		if($('#messages li').length>1000) {
			$('#messages li:first').remove();
		}
		$('#messages').append($('<li>').text(msg.user_name + ' : ' + msg.message));
		$('html,body').scrollTo($('#messages li:last').offset().top);
	});

	$("#close_menu").click(function(){
		close_menu();
		return false;
	});	
	
	$("#show_menu").click(function(){
		if($("aside").is(':visible')) {
			$("aside").animate({width:'0%'},300,function(){$("#div_black").hide();});
		} else {
			$("aside").show();
			$("aside").animate({width:'45%'},300,function(){$("#div_black").show();});
		}
		return false;
	});
	
	$("#nickname_setting_form").submit(function(){
		if($("#change_nickname").val().length<1) {
			alert('대화명은 최소 1자 입니다.');
			return false;
		}
		
		var userNickname=$("#change_nickname").val();
		
		if($("#remember_nickname").is(":checked")) {
			setCookie('nickname',userNickname);
		}
		
		$.post($(this).attr('action'),{'nickname':userNickname,'json':true},function(data){
			if(data.result=='success') {				
				$("#user_name").val(userNickname);
				$("#current_nickname").text(userNickname);
				user_name=userNickname;
				alert('대화명이 변경되었습니다.');
			}
		},'json');
		
		return false;
	});
	
	function close_menu() {
		$("aside").animate({width:'0'},300,function(){$("#div_black").hide();$(this).hide();});
	}
});
