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

# 게시글 상세보기<br>
리스트의 제목에 링크를 걸어두어 클릭시 게시글 상세 페이지로 이동한다.<br>
상세페이지에서는 수정이 불가능하고 읽기만 가능하다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230321349-dac03ea4-3382-46d2-b524-d49308234ba5.gif"/><br><br>
# 게시글 수정<br>
게시글 상세보기 페이지에 들어가면 있는 수정 버튼을 누르면 제목과 내용을 수정핤수 있게 처리된다.<br>
수정할 내용을 입력하고 수정버튼을 누르면 처리완료 알럿과 함께 수정이 완료된다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230085277-3f66a700-f5a3-40b2-8f8d-dcc350816e5a.gif"/><br><br>
# 게시글 삭제<br>
게시글 상세보기 페이지에서 삭제 버튼을 누르면 삭제된다.<br>
또한 게시글 수정 페이지에 들어가도 삭제버튼이 있어 누르면 삭제된다.<br>
삭제시 list페이지로 이동하며 총 게시글 수가 -1 이된다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230321333-0bc1bae6-0792-49ec-b9b9-077e59a26502.gif"/><br><br>

# 게시글 검색<br>
페이지 좌측 상단에 검색 옵션선택기능과 검색기능을 넣어 개시글 중에 원하는 내용을 쉽게 찾을수 있게합. <br>
![image](https://user-images.githubusercontent.com/110965244/230108962-a4652fd3-4e6d-4e8d-9213-937ccffdd551.png)<br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230110175-0ce1146a-45ce-431e-8577-f683b6960f50.gif"/><br><br>


# 취소<br>
취소버튼을 누르면 이전페이지(리스트페이지) 로 이동하며 이동했던 페이지는 유지된다.<br>
     <br>
<img width="100%" src="https://user-images.githubusercontent.com/110965244/230085229-3b9d401e-6144-4820-a281-3e91e4618536.gif"/><br><br>


 # 기타<br>
 구상단계에 만들어둔 ppt와 스프래드시트의 링크를 걸어두어 이동할수있게 해 두었다 (깃허브에서는 비공개..)<br>
 ![image](https://user-images.githubusercontent.com/110965244/230110673-c70e5283-9aad-447d-9a2c-7c12c40b6e9c.png)<br>
페이지 아래쪽을 보고있을때 한번에 맨 위로 이동할수 있는 버튼을 추가했음<br>
![image](https://user-images.githubusercontent.com/110965244/230110916-92c39fb0-1d78-4d2a-a038-0ca75d511fac.png)<br>


# oracle<br>
![image](https://user-images.githubusercontent.com/110965244/230382324-344aa731-405f-4b67-a0a5-f3e07609a994.png)
![image](https://user-images.githubusercontent.com/110965244/230382465-07e24b29-58d3-4a44-8fbe-591be137d0c1.png)
![image](https://user-images.githubusercontent.com/110965244/230382488-3647c165-3f88-4672-a366-a005914895ef.png)



