<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--  修改的消息弹框  -->
<div class="modal fade" id="exampleModalCenterupd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitleupd" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <!-- 修改的表单 -->
            <form action="/bookUpdate" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitleupd">更新信息</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="form-group row">
                        <label for="idUpd" class="col-sm-2 col-form-label">ID</label>
                        <div class="col-sm-10">
                            <input type="number" readonly setp="0.01" name="id" placeholder="请输入ID" autocomplete="off" class="form-control"  id="idUpd">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="nameUpd" class="col-sm-2 col-form-label">书名</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" autocomplete="off" id="nameUpd" placeholder="请输入书名">
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="authorUpd" class="col-sm-2 col-form-label">作者</label>
                        <div class="col-sm-10">
                            <input type="text" name="author" class="form-control" autocomplete="off" id="authorUpd" placeholder="请输入作者">
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="priceUpd" class="col-sm-2 col-form-label">价格</label>
                        <div class="col-sm-10">
                            <input type="number" name="price" class="form-control" autocomplete="off" id="priceUpd" placeholder="请输入价格">
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="pressUpd" class="col-sm-2 col-form-label">出版社</label>
                        <div class="col-sm-10">
                            <input type="text" name="press" class="form-control" autocomplete="off" id="pressUpd" placeholder="请输入出版社">
                        </div>
                    </div>


                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">更新</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>

                </div>
            </form>

        </div>
    </div>
</div>


<!-- 添加的弹框 -->
<div class="modal fade" id="exampleModalCenteradd" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <!-- 添加表单 -->
            <form action="/bookAdd">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">添加书籍</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="idAdd" class="col-sm-2 col-form-label">ID</label>
                        <div class="col-sm-10">
                            <input type="text" name="id" autocomplete="off" class="form-control" id="idAdd" placeholder="请输入ID" >
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nameAdd" class="col-sm-2 col-form-label">书名</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" autocomplete="off"  class="form-control" id="nameAdd" placeholder="请输入书名">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="authorAdd" class="col-sm-2 col-form-label">作者</label>
                        <div class="col-sm-10">
                            <input type="text" name="author" autocomplete="off"  class="form-control" id="authorAdd" placeholder="请输入作者">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="priceAdd" class="col-sm-2 col-form-label">价格</label>
                        <div class="col-sm-10">
                            <input type="number" name="price" autocomplete="off"  class="form-control" id="priceAdd" placeholder="请输入价格">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="pressAdd" class="col-sm-2 col-form-label">出版社</label>
                        <div class="col-sm-10">
                            <input type="text" name="press" autocomplete="off"  class="form-control" id="pressAdd" placeholder="请输入出版社">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">添加</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>

            </form>

        </div>
    </div>
</div>
