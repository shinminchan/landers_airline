<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link href="logincss/login.css" rel="stylesheet">




    <div class="login-header">
        <h2 style="color: #9A161F; margin: 50px auto;">Login</h2>
    </div>

    <form action="loginAf.do" method="post">
        <table class="table">
            <tr>
                <th>아이디</th>
                <td>
                    <input type="text" class="form-control" id="User_id" name="User_id" size="20" style="width:300px;">
                </td>
            </tr>
            <tr>
                <th>패스워드</th>
                <td>
                    <input type="password" class="form-control" name="User_pw" size="20" style="width:300px;">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div align="center">
                        <input type="checkbox" id="chk_save_id">&nbsp;&nbsp;id 저장<br/>
                        <br/>
                        <span><input type="submit" class="btn btn-danger" value="login"></span>&nbsp;&nbsp;&nbsp;&nbsp;
                        <span><button type="button" class="btn btn-danger"  onclick="regi()">회원가입</button></span>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <br/><br/><br/>
<!-- </div> -->




<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<script>
	function regi() {
		location.href = "regi.do";
	}

let User_id = $.cookie("User_id");    // 쿠키에서 id를 산출
if(User_id != null){    // 쿠키에 저장한 id가 있다
    $("#User_id").val( User_id );
    $("#chk_save_id").prop("checked", true);
}

$("#chk_save_id").click(function () {
    
    if( $("#chk_save_id").is(":checked") == true ){    // 첵크가 되었을 때
        
        if( $("#User_id").val().trim() == "" ){    // 빈문자였을 때
            alert('User_id를 입력해 주십시오');
            $("#chk_save_id").prop("checked", false);    // 첵크박스를 off
        }
        else{    // cookie에 저장
            $.cookie("User_id", $("#User_id").val().trim(), { expires:7, path:'/' } );
        }       
    }
    else{
        $.removeCookie("User_id", { path:'/' });
    }       
});
</script>
<!-- 
</body>
</html> -->