# 게시판 만들기<br>
<br>

# 개발환경
STS 3.9.15<br>
JDK 1.8<br>
Tomcat 9.0<br>
Spring 5.0.7<br>
Maven 2.5.1<br>
Oracle 11<br>
참고 템플릿 : sb admin2<br><br>

# 첫 페이지<br>
index.jsp<br>
단순 list.jsp로 이동하기 위한 페이지 버튼은 chat gpt를 이용해서 꾸며봤다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230070006-19d8219e-0d99-4136-880e-75ad22a58aa8.gif"/><br><br>

# 페이지 이동<br>
리스트에 페이징 처리를 해 두어 한 페이지에 10개씩 게시글이 나온다.
리스트 아래에 있는 페이지 숫자를 누르면 이동할수 있고 이동한 페이지가 유지된다.<br>
또한 이동할 페이지를 입력 후 이동버튼을 눌러도 동일하게 이동한다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230082276-5b8b9d6c-923b-43a0-94ea-1d12dadcc528.gif"/><br><br>

# 게시글 입력<br>
리스트 페이지에 있는 "게시글 작성" 버튼을 누르면 게시글 작성하는 페이지로 이동한다.<br>
이동 후 제목과 작성자 내용을 입력 후 "작성완료" 버튼을 누르면 내용이 db로 이동한다.<br>
그 후 자동으로 list페이지로 돌아가며 처리완료 알럿이 뜬다.<br>
리스트 페이지에 있는 총 게시글 수도 +1 이 된다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230085137-f228490f-634e-4a4b-abb8-a107ede22002.gif"/><br><br><br><br>


<img width="100%" src=""/><br><br>
<img width="100%" src=""/><br><br>
<img width="100%" src=""/><br><br>
<img width="100%" src=""/><br><br>

 

