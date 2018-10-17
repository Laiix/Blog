<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>wangxueming's site</title>
        <link rel="shortcut icon" type="image/x-icon" href="/static/img/web-icon.png" media="screen" />
        <link rel="stylesheet" href="/static/css/bootstrap.min.css">
        <link rel="stylesheet" href="/static/css/index.css">
        <script src="/static/js/jquery-3.2.1.min.js"></script>
        <script src="/static/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            window.onload = function(){
                /*
                 如果滚动页面也是DOM没有解决的一个问题。为了解决这个问题，浏览器实现了一下方法，
                 以方便开发人员如何更好的控制页面的滚动。在各种专有方法中，HTML5选择了scrollIntoView()
                 作为标准方法。
                 scrollIntoView()可以在所有的HTML元素上调用，通过滚动浏览器窗口或某个容器元素，
                 调用元素就可以出现在视窗中。如果给该方法传入true作为参数，或者不传入任何参数，那么
                 窗口滚动之后会让调动元素顶部和视窗顶部尽可能齐平。如果传入false作为参数，调用元素
                 会尽可能全部出现在视口中（可能的话，调用元素的底部会与视口的顶部齐平。）不过顶部
                 不一定齐平，例如：
                 //让元素可见
                 document.forms[0].scrollIntoView();
                 当页面发生变化时，一般会用这个方法来吸引用户注意力。实际上，为某个元素设置焦点也
                 会导致浏览器滚动显示获得焦点的元素。
                 支持该方法的浏览器有 IE、Firefox、Safari和Opera。
                 */
                document.querySelector("#rolltoArticle").onclick = function(){
                    document.querySelector("#container").scrollIntoView(true);
                }
            }
        </script>
    </head>
    <%--网页背景图片--%>
    <body background="/static/img/bg.png" >
        <%--首页头部div--%>
        <div>
            <header id="header">
                <nav>
                    <ul>
                        <li>
                            <a href="/">首页</a>
                            <a id="rolltoArticle" href="javascript:void(0);">文章</a>
                            <a href="/">关于</a>
                        </li>
                    </ul>
                    <div class="loginon">
                        <span>
                            <a href="/">登录</a> | <a href="/">注册</a>
                        </span>
                    </div>
                </nav>
            </header>
            <div id="bg" style="background-image:url('/static/img/index_bg_1.jpg') ">
                <p>
                其实天很蓝，阴云总要散
                </p>
                <div id="bg-p">
                    <p>
                        <i>一段路，走了很久</i>
                    </p>
                </div>
            </div>
        </div>
        <%--文章展示--%>
        <div id="container">
            <c:forEach items="${page.data}" var="article">
                <article class="article">
                    <time>${article.createTime}</time>
                    <h2 class="title"><a href="/">${article.title}</a></h2>
                    <span><i>${article.username}</i></span>
                    <div>
                        <span>分类: ${article.category.name}</span>
                        <span>点击量: ${article.click}</span>
                        <span>评论数: ${article.commentNum}</span>
                    </div>
                    <section class="article-content markdown-body">
                        <blockquote>
                            <p>${article.description}</p>
                        </blockquote>
                        <c:forEach items="${article.keywords}" var="keyword">
                            <span>${keyword.keywords}</span>
                        </c:forEach>
                    </section>
                    <footer>
                        <a href="article?id=${article.id}">阅读全文</a>
                    </footer>
                </article>
            </c:forEach>
            <%--分页--%>
            <div class="pageforbar">
                <ul class="pagination" >
                    <li <c:if test="${page.currentPage==1}">class="disabled"</c:if>><a href="/?pageNo=1">&laquo;</a></li>
                    <c:forEach begin="1" end="${page.totalPage}" step="1" var="no">
                        <li <c:if test="${page.currentPage==no}">class="active"</c:if>><a href="/?pageNo=${no}">${no}</a></li>
                    </c:forEach>
                    <li <c:if test="${page.currentPage==page.totalPage}">class="disabled"</c:if>><a href="/?pageNo=${page.totalPage}">&raquo;</a></li>
                </ul>
            </div>
        </div>
        <footer id="footer">
            <section id="copyright">
                <p>
                    © 2018 版权所有 ICP：<a href="http://www.miitbeian.gov.cn/">豫ICP备18034613号</a>
                </p>
            </section>
        </footer>
    </body>
</html>