function confirm_email(){
	var yncheck = $('.confirmyn').val();
		
	if(yncheck==="n"){
		$('.modalmsg').text("e-mail 중복검사를 하세요");
		$('.mini.modal').modal('show');	
	}
	
}

$(document).ready(function() {
	$('.confirm').on('click', function() {
		const email = $('#email').val();
		const name = 'iamhch';
		if (email === "") {
			$('.modalmsg').text("E-mail을 입력하세요");
			$('.mini.modal').modal('show');
			return false;
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
						$('confirmyn').val('n');
						$('#email').val('');
						$('#email').focus();
					}else{
						msg = "사용가능한 email입니다.";
						$('confirmyn').val('y');
					}
					$('.modalmsg').text(msg);
					$('.mini.modal').modal('show');
				},
				error : function(xhr, status, error) {
					alert('ajax error:'+xhr.status+error);
				}
			});
	});
	
	$('#viewphoto').on('click', function(){
		$('input[type=file]').click();
		return false;
	});
	
	$('#imgfile').on('change', function(event){

		const imgpath = URL.createObjectURL(event.target.files[0]);
		$('#viewphoto').attr('src',imgpath);
		return false;
		
	});
	$('#SignUp').on('click', function(){
		
		$("#memberForm").validate();
		$.extend( $.validator.messages, { required: "필수 항목입니다.", remote: "항목을 수정하세요.", email: "유효하지 않은 E-Mail주소입니다.", url: "유효하지 않은 URL입니다.", date: "올바른 날짜를 입력하세요.", dateISO: "올바른 날짜(ISO)를 입력하세요.", number: "유효한 숫자가 아닙니다.", digits: "숫자만 입력 가능합니다.", creditcard: "신용카드 번호가 바르지 않습니다.", equalTo: "같은 값을 다시 입력하세요.", extension: "올바른 확장자가 아닙니다.", maxlength: $.validator.format( "{0}자를 넘을 수 없습니다. " ), minlength: $.validator.format( "{0}자 이상 입력하세요." ), rangelength: $.validator.format( "문자 길이가 {0} 에서 {1} 사이의 값을 입력하세요." ), range: $.validator.format( "{0} 에서 {1} 사이의 값을 입력하세요." ), max: $.validator.format( "{0} 이하의 값을 입력하세요." ), min: $.validator.format( "{0} 이상의 값을 입력하세요." ) } );
		
		$("#memberForm").submit();
		
	});
});