$(document).ready(function(){
		
		const inputImage = document.getElementById("input-image");
		inputImage.addEventListener("change", e => {readImage(e.target)});
		
		var a = $("#preview-image").attr("src");
		
		if(a == "") {
			$("#preview-image").hide();
		}
	});	

	function readImage(input) {
		
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader();
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("preview-image");
	            previewImage.src = e.target.result;
	            $("#preview-image").show();
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	function update() {
		
		if ($("#noticeTitle").val().length == 0) {
	         alert("제목을 입력해주세요");
	         $("#noticeTitle").focus();
	         return false;
	      }
	
	      if ($("#noticeContent").val().length == 0) {
	         alert("내용을 입력해주세요");
	         $("#noticeContent").focus();
	         return false;
	      }		
	      
		var result = confirm("등록하시겠습니까?");
		if(result) {
			alert("등록되었습니다");
			
			const filePath = "NoticeImg";
			
			const imageInput = $("#input-image")[0];
			if(imageInput.files.length == 0){
			   $("#noticeupdate").submit();
			} else {
				const formData = new FormData();
				formData.append("uploadFile", imageInput.files[0]);
				formData.append("filePath", filePath);
				
				$.ajax({
					type : "POST",
					url : "fileUpload.do",
					processData : false,
					contentType : false,
					data : formData,						
					success : function(response) {
						$("#noticeImg").attr("value","images/NoticeImg/"+response);
						$("#noticeupdate").submit();
					},
					error : function(jqXHR) {
						alert(jqXHR.responseText); 
					}
				});
			}	
		} else {
			return false;
		}
	}