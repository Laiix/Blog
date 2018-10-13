<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>wangxueming's blog</title>
    <link rel="shortcut icon" type="image/x-icon" href="/static/img/web-icon.png" media="screen" />
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/index.css">
    <script src="/static/js/jquery-3.2.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
</head>
<body background="/static/img/bg.png" >

<div>
    <header id="header">
        <nav>
            <ul>
                <li>
                    <a href="/">首页</a>
                    <a href="/">文章</a>
                    <a href="/">关于</a>
                </li>
            </ul>
            <div class="my-info">
                <figure></figure>
                <span><a style="color:#ffffff;font-size:15px" href="/">登录</a> | <a  style="color:#ffffff;font-size:15px" href="/">注册</a></span>
            </div>
        </nav>
    </header>
    <div id="bg" >
        <p>
            其实天很蓝，阴云总要散</p>
           <p><i>一段路，走了很久</i>
        </p>
    </div>
</div>
<div id="container">
<c:forEach items="${articles}" var="article">
    <article class="article">
        <time>${article.time}</time>
        <h2 class="title"><a href="/">${article.title}</a></h2>
        <span><i>${article.username}</i></span>
        <section class="article-content markdown-body">
            <blockquote>
                <p>${article.description}</p>
            </blockquote>
            ......
        </section>
        <footer>
            <a href="/">阅读全文</a>
        </footer>
    </article>
</c:forEach>
        <div style="text-align: center">
            <ul class="pagination" >
                <li <c:if test="${pageInfo.pageNum==1}">class="disabled"</c:if>><a href="/?page=1">&laquo;</a></li>
                <c:forEach begin="1" end="${pageInfo.pages}" step="1" var="pageNo">
                    <li <c:if test="${pageInfo.pageNum==pageNo}">class="active"</c:if>><a href="/?page=${pageNo}">${pageNo}</a></li>
                </c:forEach>
                <li <c:if test="${pageInfo.pageNum==pageInfo.pages}">class="disabled"</c:if>><a href="/?page=${pageInfo.pages}">&raquo;</a></li>
            </ul>
        </div>
</div>
    <footer id="footer">
        <section id="copyright">
            <p style="font-size: 20px">
                © 2018 <a href="/">豫ICP备18034613号</a>
            </p>
        </section>
    </footer>
</body>
</html>