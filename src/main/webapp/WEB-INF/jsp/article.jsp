<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>${article.title}</title>
        <link rel="shortcut icon" type="image/x-icon" href="/static/img/web-icon.png" media="screen" />
        <link rel="stylesheet" href="/static/css/bootstrap.min.css">
        <link rel="stylesheet" href="/static/css/index.css">
        <script src="/static/js/jquery-3.2.1.min.js"></script>
        <script src="/static/js/bootstrap.min.js"></script>

    </head>
    <body background="/static/img/bg.png" >
        <div id="container">
            <article class="article">
                <time id="time1">${article.createTime}</time>
                <h2 style="text-align: center; ">${article.title}</h2>
                <p style="position: center" class="text-info">点击量:${article.click}</p>
                <section>
                    <blockquote>
                        <p>${article.description}</p>
                    </blockquote>
                    <div id="zhengwen"></div>
                </section>
            </article>
        </div>
        <script src="/static/js/marked.min.js"></script>
        <script>
            document.getElementById('zhengwen').innerHTML=marked('${article.content}');
        </script>
    </body>
</html>