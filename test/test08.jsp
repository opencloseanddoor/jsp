
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>test08</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        List<Map<String, Object>> list = new ArrayList<>();
        list.add(new HashMap<String, Object>() {{
            put("id", 1000);
            put("title", "아몬드");
            put("author", "손원평");
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        }});
        list.add(new HashMap<String, Object>() {{
            put("id", 1001);
            put("title", "사피엔스");
            put("author", "유발 하라리");
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        }});
        list.add(new HashMap<String, Object>() {{
            put("id", 1002);
            put("title", "코스모스");
            put("author", "칼 세이건");
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        }});
        list.add(new HashMap<String, Object>() {{
            put("id", 1003);
            put("title", "나미야 잡화점의 기적");
            put("author", "히가시노 게이고");
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        }});
    %>

    <div class="d-flex title justify-content-center">
        <h1>책목록</h1>
    </div>

    <div class="container d-flex justify-content-center">
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>표지</th>
                    <th>Title</th>
                </tr>
            </thead>
            <tbody>
                <% for(Map<String, Object> book : list) 
                { %>
                    <tr>
                        <td><%= book.get("id") %></td>
                        <td><img width="200px" height="200px" src="<%= book.get("image") %>" alt="사진입니다"></td>
                        <td><a href="/jsp/test/test08-info.jsp?id=<%= book.get("id") %>"><%= book.get("title") %></a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
