<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<script src="/js/jquery-3.3.1.js"></script>
<form class="form-horizontal" role="form" id="editorForm" method="post" action="/">
    <div class="form-group">
        <div class="form-group">
            <div class="col-lg-12">
                <textarea name="ckeditor" id="ckeditor"></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-12" align="right">
                <button type="button" onclick="saveText()" 	class="btn btn-default">저장</button>
            </div>
        </div>
    </div>
</form>
 	나의 페이지입니다. ${username} 님 환영합니다.
<script>
    $(function(){    	 
        CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
        	uiColor:'#FFFFFF',
        	width:'100%',
            height:'400px',
            filebrowserImageUploadUrl: '/test' //여기 경로로 파일을 전달하여 업로드 시킨다.
        });
         
        CKEDITOR.instances.ckeditor.setData('<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><h2>펀딩 오픈 9시간만에&nbsp;100% 달성</h2><h2>펀딩 오픈 30시간만에 200% 달성</h2><h2>펀딩 오픈 46시간만에 300% 달성</h2><h2>펀딩 오픈&nbsp;3일 만에 500% 달성 감사&nbsp;세탁망 증정!</h2><p>&nbsp;</p>');
        CKEDITOR.on('dialogDefinition', function( ev ){
            var dialogName = ev.data.name;
            var dialogDefinition = ev.data.definition;
          
            switch (dialogName) {
                case 'image': //Image Properties dialog
                    //dialogDefinition.removeContents('info');
                    dialogDefinition.removeContents('Link');
                    dialogDefinition.removeContents('advanced');
                    break;
            }
        });
    });
    function saveText() {
    	console.log(CKEDITOR.instances.ckeditor.getData());
    	
    	/* var fileObject = new ActiveXObject("Scripting.FileSystemObject");
    	var fWrite = fileObject.CreateTextFile("C:\\jsp_study\\workspace\\git\\ict1-erp1\\src\\main\\webapp\\resources\\text\\test.txt", true)
    	fWrite.write(CKEDITOR.instances.ckeditor.getData());
    	fWrite.close();
    	alser("저장되었습니다."); */
		var data = CKEDITOR.instances.ckeditor.getData()
    	/* var data ={
    			cont_text:cont_text
    	} */
		var xhr = new XMLHttpRequest();
    	//data = JSON.stringify(data);
			$.ajax({
			url : '/saveText',
			type : 'POST',	
			contentType : 'application/json',
			/* beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			}, */
			success : function(res) {
				alert("파일이 저장되었습니다.");
			},
				error : function(err) {
				console.log(err);
			},
			data : data
		});
    	
    }
</script>