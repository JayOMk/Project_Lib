<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>스프링부트 게시판</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
                        
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Spring boot</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class="nav-link" href="/">홈</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/board/list">게시판</a>
                </li>
            </ul>
            <%-- 로그인 폼 --%>
            <form method="post" action="/login">
                <input type="text" name="username" placeholder="아이디">
                <input type="password" name="password" placeholder="비밀번호">
                <button class="btn btn-outline-success" type="submit">로그인</button>
            </form>
            <%-- 로그아웃 폼 --%>
            <form method="post" action="/logout">
                <button class="btn btn-outline-success" type="submit">로그아웃</button>
            </form>
        </div>
    </div>
</nav>

</body>
</html>
