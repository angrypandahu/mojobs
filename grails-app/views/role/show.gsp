<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>

    <asset:stylesheet src="bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap/css/bootstrap-theme.min.css"/>
    %{--<asset:stylesheet src="bootstrap/css/style.css"/>--}%
    <asset:javascript src="bootstrap/js/jquery.min.js"/>
    <asset:javascript src="bootstrap/js/bootstrap.min.js"/>
    <asset:javascript src="bootstrap/js/scripts.js"/>
    <style type="text/css">
    .xq {
        margin-left: 5px
    }
    </style>
</head>

<body>
<h1>显示数据</h1>

<table class="table table-striped">
    <thead>
    <tr>
        <th width="30%">代号</th>
        <th width="30%">名称</th>
        <th width="40%">操作</th>
    </tr>
    </thead>
    <tbody id="tb">

    </tbody>
</table>


<!--模态框-->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">详细信息</h4>
            </div>

            <div class="modal-body" id="nr">

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

</body>
<script type="text/javascript">

//    加载数据
    Load();


//    加载数据的方法
    function Load() {
        $.ajax({
            url: "jiazai.php",
            dataType: "TEXT",
            success: function (data) {
                var str = "";
                var hang = data.split("|");
                for (var i = 0; i < hang.length; i++) {
                    var lie = hang[i].split("^");
                    str = str + "<tr><td>" + lie[0] + "</td><td>" + lie[1] + "</td><td><button type='button' class='btn btn-info btn-sm sc' code='" + lie[0] + "'>删除</button><button type='button' class='btn btn-primary btn-sm xq' code='" + lie[0] + "'>查看详情</button></td></tr>";
                }
                $("#tb").html(str);

                addshanchu();
                addxiangqing();

            }
        });

    }

//    给删除按钮加事件的方法
    function addshanchu() {
        $(".sc").click(function () {
            var code = $(this).attr("code");
            $.ajax({
                url: "shanchu.php",
                data: {code: code},
                dataType: "TEXT",
                type: "POST",
                success: function (d) {
                    if (d.trim() == "OK") {
                        alert("删除成功");
                        Load();
                    }
                    else {
                        alert("删除失败");
                    }
                }
            });
        })
    }

    function addxiangqing() {
        $(".xq").click(function () {

            $('#myModal').modal('show');

            var code = $(this).attr("code");
            $.ajax({

                url: "xiangqing.php",
                data: {code: code},
                dataType: "TEXT",
                type: "POST",
                success: function (data) {
                    var lie = data.split("^");

                    var str = "<div>民族代号：" + lie[0] + "</div><div>民族名称：" + lie[1] + "</div>";

                    $("#nr").html(str);
                }
            });
        })
    }

</script>
</html>