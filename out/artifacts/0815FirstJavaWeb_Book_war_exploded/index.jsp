<%@ page import="com.nf147.ldl.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.nf147.ldl.dao.BookDAO" %>
<%@ page import="com.nf147.ldl.dao.BookInMemoryDAO" %>
<%@ page import="com.nf147.ldl.util.WebUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>所有图书信息</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>

      a{
        text-decoration: none;
        list-style-type: none;
        color:black;
        color:white;
      }
      a:hover{
        color:red;
      }

    </style>
  </head>
  <body>

<div class="row">
  <div class="col-3"></div>
  <div class="col-6">
     <%=
          WebUtil.showMessage(request)
     %>

  </div>
  <div class="col-3"></div>
</div>

<form action="bookDel" method="post">
  <div class="row" style="margin-top:30px;">

            <table class="table table-dark" id="tab" >
              <tr>
                <th>全选<input id="bigCbo" type="checkbox" /></th>
                <th>ID</th>
                <th>书名</th>
                <th>作者</th>
                <th>价格</th>
                <th>出版社</th>
                <th>其他</th>
              </tr>
                      <%--<%--%>
                        <%--List<Book> books = (List<Book>) request.getAttribute("books");--%>
                        <%--for (Book book : books) {--%>
                      <%--%>--%>

            <c:forEach items="${requestScope.books}" var="book">

              <tr>
                <td><input type="checkbox" class="cbo" name="cboX" value="${book.id}" /></td>
                <td>${book.id}</td>
                <td>
                  <a href="bookDetail?id=${book.id}">${book.name}</a>
                </td>
                <td>${book.author}</td>
                <td>${book.price}</td>
                <td>${book.press}</td>
                <td>
                    <input type="button" data-id="${book.id}"  class="btn btn-secondary" data-toggle="modal" data-target="#exampleModalCenterupd" value="更新" />
                    <input type="button" class="btn btn-danger" onclick="delClick(${book.id});" value="删除"/>

                </td>
              </tr>

            </c:forEach>

          </table>
        <input type="button"  data-toggle="modal" class="btn btn-secondary" data-target="#exampleModalCenteradd" value="添加新书籍" />
        <input type="submit"  style="margin-left:15px;" class="btn btn-secondary"  value="批量删除" />
  </div>
</form>

<%@include file="add_and_update_model.jsp"%>

<script src="js_css/js/jquery-3.3.1.js" ></script>
<script src="js_css/js/bootstrap.min.js"></script>

<script>

    // //点击更新赋值事件
    // function updAss(x){
    //     var tds = x.parentNode.parentNode.getElementsByTagName("td");
    //     var id = tds[1].childNodes[0].nodeValue;
    //     var name = tds[2].getElementsByTagName("a")[0].childNodes[0].nodeValue;
    //     var author = tds[3].childNodes[0].nodeValue;
    //     var price = tds[4].childNodes[0].nodeValue;
    //     var press = tds[5].childNodes[0].nodeValue;
    //
    //
    //     $("#idUpd").val(id);
    //     $("#nameUpd").val(name);
    //     $("#authorUpd").val(author);
    //     $("#priceUpd").val(price);
    //     $("#pressUpd").val(press);
    //
    //     console.log($("#idUpd"));
    //     console.log($("#idUpd").val());
    //     console.log($("#nameUpd"));
    //     console.log($("#nameUpd").val());
    //
    //
    // }


    $('#exampleModalCenterupd').on('show.bs.modal', function (event) {
            // var button = $(event.relatedTarget) ;
            // var recipient = button.data('whatever') ;
            // var modal = $(this);
            // modal.find('.modal-body input').val(recipient);
            //
            // var id = button.data("id");
            var id  = $(event.relatedTarget).data("id");

            $.ajax({
               type:"get",
               data:{"id":id},
               url:"/getSingleBook",
               success:function(data){
                        $("#idUpd").val(data.id);
                        $("#nameUpd").val(data.name);
                        $("#authorUpd").val(data.author);
                        $("#pressUpd").val(data.press);
                        $("#priceUpd").val(data.price);
               },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("错误信息："+ XMLHttpRequest.responseText+"  "+textStatus+" "+errorThrown);
                }
            });
    });

    //添加js
    $('#exampleModalCenteradd').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) ;
        var recipient = button.data('whatever') ;
        var modal = $(this);
        //modal.find('.modal-title').text('New message to ' + recipient);
        modal.find('.modal-body input').val(recipient);
    });

      function delClick(x) {

          if(!window.confirm("确认删除吗？")){
              return false;
          }

          window.location.href="/bookDel?id="+x;
      }


      //全选点击事件
    document.getElementById("bigCbo").onclick = function () {
        console.log(document.getElementById("bigCbo").checked);
        var cbos = document.getElementsByClassName("cbo");
            for (var i = 0; i < cbos.length; i++) {
                cbos[i].checked = document.getElementById("bigCbo").checked;
            }
    }


    </script>
  </body>
</html>
