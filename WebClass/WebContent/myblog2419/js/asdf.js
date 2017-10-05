$(document).ready(function() {
	$('#Loginform').submit(function(event) {
		// submit되는 것을 막기
		event.preventDefault();

		console.log('start');
		// id, pwd 값 가져오기
		var id = $("#id").val(); // document.getElementById("id").value
		var pwd = $("#pwd").val();
		console.log(id, pwd);

		// 서버로 post방식 전송(ajax)
		$.post("http://httpbin.org/post", {
			id : id,
			pwd : pwd
		}, function(data) {
			// 서버로부터 응답을 받으면
			// alert(data.form.id+'님 로그인 되었습니다.');
			var myModal = $('#myModal');
			myModal.modal();
			myModal.find('.modal-body').text(data.form.id + '님 로그인되었습니다.');
		});

	});
});

// 간단하게 쓰기
$(function() {

});
function menu_over(e) {
	e.setAttribute("class", "nav-item active"); // <li class="nav-item active"
}

function menu_out(e) {
	e.setAttribute("class", "nav-item"); // <li class="nav-item"
}


$(document).ready(function(){
    $('#signForm').submit(function(event) {
        // 자동 submit 되는 기능을 막음
        event.preventDefault();
 
        // name값을 가져오기
        // document.getElementById("id").value
        var name = $('#name').val();
        // 서버로 post 방식으로 전송
        	$.post("http://httpbin.org/post",
                    { name: name},
                    function(data) {
                        //alert(data.form.name + '님 회원가입 되었습니다.');
                        var myModal = $('#myModal');
                      	//console.log("이름 : "+data.form.name);
                        document.getElementById('signResult').innerHTML = data.form.name + '님 회원가입 되었습니다';
                        myModal.modal();
                    });
    });
});
 
jQuery( document ).ready( function( $ ) {
    $( 'iframe[src^="https://www.youtube.com/"]' ).wrap( '<div class="youtubeWrap"></div>' );
  } );