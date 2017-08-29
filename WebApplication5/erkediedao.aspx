<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="erkediedao.aspx.cs" Inherits="WebApplication5.erkediedao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>儿科跌倒坠床风险评估表填报</title>
    <link href="Scripts/jquery-ui.min.css" type="text/css" rel="stylesheet" />
    <link href="Scripts/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="Scripts/jquery.datetimepicker.min.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.datetimepicker.full.js"></script>
    <style type="text/css">
        #table1 {
            font-family: verdana,arial,sans-serif;
            font-size: 13px;
            color: #333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }

            #table1 th {
                border-width: 1px;
                padding: 2px;
                border-style: solid;
                border-color: #666666;
                /*background-color: #ececff;*/
                vertical-align: middle;
                text-align: center;
            }

            #table1 td {
                border-width: 1px;
                padding: 2px;
                border-style: solid;
                border-color: #666666;
                background-color: #ffffff;
            }

        .ui-autocomplete {
            max-height: 400px;
            overflow-y: auto;
            /* prevent horizontal scrollbar */
            overflow-x: hidden;
            /* add padding to account for vertical scrollbar */
            padding-right: 20px;
        }

        .col-print-1 {
            width: 8%;
            float: left;
        }

        .col-print-2 {
            width: 16%;
            float: left;
        }

        .col-print-3 {
            width: 25%;
            float: left;
        }

        .col-print-4 {
            width: 33%;
            float: left;
        }

        .col-print-5 {
            width: 42%;
            float: left;
        }

        .col-print-6 {
            width: 50%;
            float: left;
        }

        .col-print-7 {
            width: 58%;
            float: left;
        }

        .col-print-8 {
            width: 66%;
            float: left;
        }

        .col-print-9 {
            width: 75%;
            float: left;
        }

        .col-print-10 {
            width: 83%;
            float: left;
        }

        .col-print-11 {
            width: 92%;
            float: left;
        }

        .col-print-12 {
            width: 100%;
            float: left;
        }


    </style>

</head>
<body>
    <h2 style="text-align: center">监利县人民医院</h2>
    <h1 style="text-align: center">儿科跌倒/坠床风险评估表</h1>
    <div id="noprint">
        <form id="form1" runat="server">
            <div style="width: 100%">
                <div style="width: 20%; float: left">
                    <label for="dept_name">病区:</label><input type="text" name="dept_name" style="width: 80%" />
                </div>
                <div style="width: 20%; float: left">
                    <label>床号:</label><input id="ch" placeholder="双击选择病人" type="text" name="bed_label" style="width: 80%" />
                </div>
                <div style="width: 20%; float: left">
                    <label>姓名:</label><input type="text" name="name" style="width: 80%" />
                </div>
                <div style="width: 10%; float: left">
                    <label>性别:</label><input type="text" name="gender" style="width: 70%" />
                </div>
                <div style="width: 10%; float: left">
                    <label>年龄:</label><input type="text" name="age" style="width: 70%" />
                </div>
                <div style="width: 20%; float: left">
                    <label>住院号:</label><input type="text" name="inp_no" style="width: 80%" />
                </div>
            </div>
            <div style="width: 100%; margin-bottom: 10px">
                <div style="width: 60%; float: left">
                    <label>入院诊断:</label><input type="text" name="diagnosis" style="width: 90%" />
                </div>
                <div style="width: 20%; float: left">
                    <label>评估时间:</label><input type="text" name="evaluation_time" style="width: 75%" />
                </div>
                <div style="width: 20%; float: left">
                    <label>评估人:</label><input type="text" name="evaluation_staff" style="width: 80%" />
                </div>
            </div>
            <hr />
            <div>
                <table id="table1" style="width: 100%;">
                    <tr>
                        <th rowspan="2">危险因子</th>
                        <th colspan="4">分值</th>
                        <th rowspan="2">评分</th>
                    </tr>
                    <tr>
                        <th>0</th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                    </tr>
                    <tr>
                        <th>年龄</th>
                        <td>
                            <input name="nianling" type="radio" value="0" /><span>4岁以上</span></td>
                        <td>
                            <input name="nianling" type="radio" value="1" /><span>0～3岁</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>意识</th>
                        <td>
                            <input name="yishi" type="radio" value="0" /><span>正常</span></td>
                        <td>&nbsp;</td>
                        <td>
                            <input name="yishi" type="radio" value="2" /><span>有意识障碍</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>血小板</th>
                        <td>
                            <input name="xuexiaoban" type="radio" value="0" /><span>&gt;50 × 10<sup>9</sup>/L</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <input name="xuexiaoban" type="radio" value="3" /><span>≤50 × 10<sup>9</sup>/L</span></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>血红蛋白</th>
                        <td>
                            <input name="xuehongdanbai" type="radio" value="0" /><span>&gt;60 g/L</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <input name="xuehongdanbai" type="radio" value="3" /><span>≤60 g/L</span></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>惊厥史</th>
                        <td>
                            <input name="jingjueshi" type="radio" value="0" /><span>一周内无惊厥史</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <input name="jingjueshi" type="radio" value="3" /><span>一周内有惊厥史</span></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>活动度</th>
                        <td>
                            <input name="huodongdu" type="radio" value="0" /><span>无步态不稳或不能移动</span></td>
                        <td>
                            <input name="huodongdu" type="radio" value="1" /><span>自主活动需辅助</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>生长发育</th>
                        <td>
                            <input name="shengzhangfayu" type="radio" value="0" /><span>正常,反应灵敏</span></td>
                        <td>
                            <input name="shengzhangfayu" type="radio" value="1" /><span>生长发育迟缓</span></td>
                        <td>
                            <input name="shengzhangfayu" type="radio" value="2" /><span>分不清方向,无判断力</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>排泄</th>
                        <td>
                            <input name="paixie" type="radio" value="0" /><span>独立完成</span></td>
                        <td>
                            <input name="paixie" type="radio" value="1" /><span>频繁上厕所或腹泻或入厕时需要协助</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>目前用药</th>
                        <td>
                            <input name="muqianyongyao" type="radio" value="0" /><span>无特殊用药</span></td>
                        <td>
                            <input name="muqianyongyao" type="radio" value="1" /><span>持续用药如镇静剂抗惊厥药降压药等</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>床栏使用</th>
                        <td>
                            <input name="chuanglanshiyong" type="radio" value="0" /><span>使用床栏</span></td>
                        <td>
                            <input name="chuanglanshiyong" type="radio" value="1" /><span>未使用床栏</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>坠床史</th>
                        <td>
                            <input name="zhuichuangshi" type="radio" value="0" /><span>没有</span></td>
                        <td>
                            <input name="zhuichuangshi" type="radio" value="1" /><span>住院曾有坠床史一年内</span></td>
                        <td>
                            <input name="zhuichuangshi" type="radio" value="2" /><span>本次住院期间有坠床</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th>评定总分</th>
                        <th colspan="4">3～5分者每周评估，&gt;5分者每三天评估，患儿病情变化随时评估</th>
                        <th id="total">&nbsp;</th>
                    </tr>
                </table>
            </div>
            <hr />
            <div style="margin-left: 10px">
                <p>坠床跌倒安全防范措施(根据病人情况选择)：</p>
                <input type="checkbox" name="yufangcuoshi" value="引导患儿及家长熟悉环境" />引导患儿及家长熟悉环境<br />
                <input type="checkbox" name="yufangcuoshi" value="病床使用双面床栏确保安全" />病床使用双面床栏确保安全<br />
                <input type="checkbox" name="yufangcuoshi" value="检查环境和设施是否完好" />检查环境和设施是否完好<br />
                <input type="checkbox" name="yufangcuoshi" value="评估家长是否能正确使用护栏" />评估家长是否能正确使用护栏<br />
                <input type="checkbox" name="yufangcuoshi" value="在患儿床头挂警示标志" />在患儿床头挂警示标志<br />
                <input type="checkbox" name="yufangcuoshi" value="教育家长如何防止患儿坠床跌倒" />教育家长如何防止患儿坠床跌倒<br />
                <input type="checkbox" name="yufangcuoshi" value="告知家长患儿不在不安全的地方玩耍" />告知家长患儿不在不安全的地方玩耍<br />
                <input type="checkbox" name="yufangcuoshi" value="根据病情给予适当约束" />根据病情给予适当约束<br />
                <input type="checkbox" name="yufangcuoshi" value="使用棉被、软枕加以保护" />使用棉被、软枕加以保护<br />
                <input type="checkbox" name="yufangcuoshi" value="其他" />其他<br />
            </div>
        </form>
        <button onclick="ss()">提交</button>
        <button onclick="window.print();">print</button>
    </div>
    <div id="print">
        <div class="container">
            <div class="row">
                <div class="col-print-4"><span>病区:&nbsp;</span><span id="dept_name"></span></div>
                <div class="col-print-4"><span>床号:&nbsp;</span><span id="bed_label"></span></div>
                <div class="col-print-4"><span>住院号:&nbsp;</span><span id="inp_no"></span></div>
            </div>
            <div class="row">
                <div class="col-print-4"><span>姓名:&nbsp;</span><span id="name"></span></div>
                <div class="col-print-4"><span>性别:&nbsp;</span><span id="gender"></span></div>
                <div class="col-print-4"><span>年龄:&nbsp;</span><span id="age"></span></div>
            </div>
            <div class="row">
                <div class="col-print-12"><span>入院诊断:&nbsp;</span><span id="diagnosis"></span></div>
            </div>
        </div>
        <table class="table table-condensed" id="table2">
            <thead>
                <tr>
                    <th>危险因子</th>
                    <th>表现</th>
                    <th>评分</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>年龄</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>意识</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>血小板</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>血红蛋白</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>惊厥史</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>生长发育</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>排泄</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>目前用药</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>床栏使用</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>坠床史</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>总分</td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script type="text/javascript">
        var alldata = new Object();
        var patients = new Array();
        var cache = new Array();
        function getalldata() {
            alldata = {
                pat: {
                    dept_name: $("input[name='dept_name']").val(),
                    bed_label: $("input[name='bed_label']").val(),
                    name: $("input[name='name']").val(),
                    gender: $("input[name='gender']").val(),
                    age: $("input[name='age']").val(),
                    inp_no: $("input[name='inp_no']").val(),
                    diagnosis: $("input[name='diagnosis']").val(),
                    evaluation_time: $("input[name='evaluation_time']").val(),
                    evaluation_staff: $("input[name='evaluation_staff']").val()
                },
                point: {
                    nianling: { fen: $("input[name='nianling']:checked").val(), shuoming: $("input[name='nianling']:checked").next().text() },
                    yishi: { fen: $("input[name='yishi']:checked").val(), shuoming: $("input[name='yishi']:checked").next().text() },
                    xuexiaoban: { fen: $("input[name='xuexiaoban']:checked").val(), shuoming: $("input[name='xuexiaoban']:checked").next().text() },
                    xuehongdanbai: { fen: $("input[name='xuehongdanbai']:checked").val(), shuoming: $("input[name='xuehongdanbai']:checked").next().text() },
                    jingjueshi: { fen: $("input[name='jingjueshi']:checked").val(), shuoming: $("input[name='jingjueshi']:checked").next().text() },
                    huodongdu: { fen: $("input[name='huodongdu']:checked").val(), shuoming: $("input[name='huodongdu']:checked").next().text() },
                    shengzhangfayu: { fen: $("input[name='shengzhangfayu']:checked").val(), shuoming: $("input[name='shengzhangfayu']:checked").next().text() },
                    paixie: { fen: $("input[name='paixie']:checked").val(), shuoming: $("input[name='paixie']:checked").next().text() },
                    muqianyongyao: { fen: $("input[name='muqianyongyao']:checked").val(), shuoming: $("input[name='muqianyongyao']:checked").next().text() },
                    chuanglanshiyong: { fen: $("input[name='chuanglanshiyong']:checked").val(), shuoming: $("input[name='chuanglanshiyong']:checked").next().text() },
                    zhuichuangshi: { fen: $("input[name='zhuichuangshi']:checked").val(), shuoming: $("input[name='zhuichuangshi']:checked").next().text() },
                    zongfen:$("#total").text()
                },
                precautions: []
            };

            $('input[name="yufangcuoshi"]:checked').each(function () {
                alldata.precautions.push($(this).val());
            });
        }

        function setalldata() {
            $("#dept_name").text(alldata.pat.dept_name);
            $("#bed_label").text(alldata.pat.bed_label);
            $("#name").text(alldata.pat.name);
            $("#gender").text(alldata.pat.gender);
            $("#age").text(alldata.pat.age);
            $("#inp_no").text(alldata.pat.inp_no);
            $("#diagnosis").text(alldata.pat.diagnosis);
            $("#evaluation_time").text(alldata.pat.evaluation_time);
            $("#evaluation_staff").text(alldata.pat.evaluation_staff);
            $("#table2 td").eq(1).text(alldata.point.nianling.shuoming).next().text(alldata.point.nianling.fen);
            $("#table2 td").eq(4).text(alldata.point.yishi.shuoming).next().text(alldata.point.yishi.fen);
            $("#table2 td").eq(7).text(alldata.point.xuexiaoban.shuoming).next().text(alldata.point.xuexiaoban.fen);
            $("#table2 td").eq(10).text(alldata.point.xuehongdanbai.shuoming).next().text(alldata.point.xuehongdanbai.fen);
            $("#table2 td").eq(13).text(alldata.point.jingjueshi.shuoming).next().text(alldata.point.jingjueshi.fen);
            $("#table2 td").eq(16).text(alldata.point.huodongdu.shuoming).next().text(alldata.point.huodongdu.fen);
            $("#table2 td").eq(19).text(alldata.point.shengzhangfayu.shuoming).next().text(alldata.point.shengzhangfayu.fen);
            $("#table2 td").eq(22).text(alldata.point.muqianyongyao.shuoming).next().text(alldata.point.muqianyongyao.fen);
            $("#table2 td").eq(25).text(alldata.point.chuanglanshiyong.shuoming).next().text(alldata.point.chuanglanshiyong.fen);
            $("#table2 td").eq(28).text(alldata.point.zhuichuangshi.shuoming).next().text(alldata.point.zhuichuangshi.fen);
            $("#table2 td").eq(32).text(alldata.point.zongfen);
        }

        function getRadio(obj) {
            $(obj).parent().siblings().last().text($(obj).val()).css("text-align", "center");
            var point = 0;
            $("#table1 tr").find("td:last").each(function () {
                if (!isNaN(parseInt($(this).text())))
                    point += parseInt($(this).text());
            });
            $("#total").text(point.toString());
        }
        function ss() {
            getalldata();
            setalldata();
            var strss = JSON.stringify(alldata);
            console.log("patients");
            console.log(patients);
            $("#table1 tr").find("td:last").each(function () {
                if (isNaN(parseInt($(this).text()))) {
                    alert("有未评估的项目");
                    return false;
                }
            });
            var postdata = { data: alldata, type: "insert" };
            $.ajax({
                type: "POST",
                url: "dataservice.aspx",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(postdata),
                dataType: "json",
                success: function (message) {
                    if (message > 0) {
                        alert("请求已提交！我们会尽快与您取得联系");
                    }
                },
                error: function (message) {
                    $("#request-process-patent").html("提交数据失败！");
                }
            });
        }
        $(document).ready(function () {
            $("input[name='evaluation_time']").datetimepicker({
                format: 'Y-m-d H:i:s',lang:'zh'
            });
            $("#table1 td :radio").click(function () { getRadio(this); });
            $.ajax({
                type: "POST",
                url: "dataservice.aspx",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({ type: "getpatients" }),
                dataType: "json",
                success: function (data) {
                    $("input[name='dept_name']").val(data.dept_name);
                    $("input[name='evaluation_staff']").val(data.name);
                    cache = data.patients;
                    patients = $.map(cache, function (item) {
                        return {
                            label: item.BED_LABEL + " " + item.NAME,
                            value: item.BED_LABEL
                        }
                    });
                    $("#ch").autocomplete({
                        source: patients,
                        minLength: 0,
                        select: function (event, ui) {
                            $.each(cache, function (i, n) {
                                if (n.BED_LABEL == ui.item.value) {
                                    $("input[name='name']").val(n.NAME);
                                    $("input[name='gender']").val(n.SEX);
                                    $("input[name='age']").val(n.AGE);
                                    $("input[name='inp_no']").val(n.INP_NO);
                                    $("input[name='diagnosis']").val(n.DIAGNOSIS);
                                    $("input[name='dept_name']").val(n.DEPT_NAME);
                                }
                            });
                        }
                    });
                }
            });
        });
        $("#ch").bind("dblclick", function () {
            $(this).autocomplete("search", "");
        });
    </script>
</body>
</html>
