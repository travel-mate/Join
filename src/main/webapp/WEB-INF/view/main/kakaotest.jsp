<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Join/Kakao</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<a id="kakao-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=fe84b893c34029a43031daebdcfe2cb3&redirect_uri=http://localhost:8080/Join/oauth/kakao&response_type=code"></a>
<a href="http://developers.kakao.com/logout"></a>
   <script type='text/javascript'>
      //<![CDATA[
      // 사용할 앱의 JavaScript 키를 설정해 주세요.
      Kakao.init('2122d19e963b9756480693058989a615'); //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
      // 카카오 로그인 버튼을 생성합니다.
      Kakao.Auth.createLoginButton({
         container : '#kakao-login-btn',
         success : function(authObj) {
            Kakao.API.request({
               url : '/v1/user/me',
               success : function(res) {
                  alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
                  alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
                  console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
                  // console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
                  console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
                  // res.properties.nickname으로도 접근 가능 )
                  console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
               }
            })
         },
         fail : function(error) {
            alert(JSON.stringify(error));
         }
      });
      //]]>
     
</script>
</head>
<body>
<div id="kakao-logged-group"></div>
<div id="kakao-profile"></div>

</body>
</html>