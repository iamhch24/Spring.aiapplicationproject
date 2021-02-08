$(document).ready(function() {
	$('.confirm').on('click', function() {
		const email = $('#email').val();
		const name = 'iamhch';
		if (email === "") {
			$('.modalmsg').text("E-mail을 입력하세요");
			$('.mini.modal').modal('show');
			return;
		} else
			$.ajax({
				type : 'POST',
				data : {email:email},
				datatype : 'json',
				url : 'emailConfirmAjax',
				success : function(data) {
					let msg = "";
					if(data=='yes'){
						msg = "사용중인 email입니다.";
						$('#email').val('');
						$('#email').focus();
					}else{
						msg = "사용가능한 email입니다.";
					}
					$('.modalmsg').text(msg);
					$('.mini.modal').modal('show');
				},
				error : function(xhr, status, error) {
					alert('ajax error:'+xhr.status+error);
				}
			});
	})
});