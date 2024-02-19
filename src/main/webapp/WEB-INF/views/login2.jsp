<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="/css/sign-in.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</head>
<body>
<main class="form-signin w-100 m-auto">
    <form action="/account/login" method="post">
        <a href="/">
            <img class="mb-4" src="/images/thymeleaf.png" width="72" height="57">
        </a>
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

        <%-- 로그인 실패 시 메시지 --%>
        <c:if test="${not empty param.error}">
            <div class="alert alert-danger" role="alert">
                Invalid username and password.
            </div>
        </c:if>
        <%-- 로그아웃 시 메시지 --%>
        <c:if test="${not empty param.logout}">
            <div class="alert alert-primary" role="alert">
                You have been logged out.
            </div>
        </c:if>

        <div class="form-floating">
            <input type="text" class="form-control" id="username" name="username" placeholder="username">
            <label for="username">Username</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="password" name="password" placeholder="password">
            <label for="password">Password</label>
        </div>

        <div class="form-check text-start my-3">
            <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
                Remember me
            </label>
        </div>
        <button class="btn btn-primary w-100 py-2" type="submit">로그인</button>
        <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p>
    </form>
</main>
</body>
</html>
