<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADL.aspx.cs" Inherits="WebApplication5.ADL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>住院病人日常生活能力（ADL）评估表填报</title>
    <link href="Scripts/jquery-ui.min.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.min.js"></script>
        <style type="text/css">
        table {
        font-family: verdana,arial,sans-serif;
        font-size:13px;
        color: #333333;
        border-width: 1px;
        border-color: #666666;
        border-collapse: collapse;
    }

        th {
        border-width: 1px;
        padding: 2px;
        border-style: solid;
        border-color: #666666;
        /*background-color: #ececff;*/
        vertical-align:middle; 
        text-align:center;
    }


    td {
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
</style>
</head>
<body>
    <form id="form1" runat="server">
    <h2 style="text-align:center">监利县人民医院</h2>
    <h1 style="text-align:center">住院病人日常生活能力（ADL）评估量表</h1>
    <div>
        病区:<input type="text" name="dept_name" value="" />&nbsp;
        床号:<input id="ch" type="text" name="bed_label" value="" />&nbsp;
        姓名:<input type="text" name="name" value="" />&nbsp;
        性别:<input type="text" name="gender" value="" />&nbsp;
        年龄:<input type="text" name="age" value="" />&nbsp;
        住院号:<input type="text" name="inp_no" value="" /><br />
        入院诊断:<input type="text" name="diagnosis" value="" />
        评估时间:<input type="text" name="evaluation_time" value="" />
        评估人:<input type="text" name="evaluation_staff" value="" />
    </div>
    <div>
    <table style="width: 100%;">
            <tr>
                <th rowspan="2">项目</th>
                <th colspan="4">分值</th>
                <th rowspan="2">评分</th>
            </tr>
            <tr>
                <th>0</th>
                <th>5</th>
                <th>10</th>
                <th>15</th>
            </tr>
            <tr>
                <th>大便</th>
                <td><input name="dabian" type="radio" value="0"/><span>失禁或昏迷</span></td>
                <td><input name="dabian" type="radio" value="5"/><span>偶有失禁(<1次/周)</span></td>
                <td><input name="dabian" type="radio" value="10"/><span>控制</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>小便</th>
                <td><input name="xiaobian" type="radio" value="0"/><span>失禁或昏迷或需他人导尿</span></td>
                <td><input name="xiaobian" type="radio" value="5"/><span>偶有失禁(<1次/24h)</span></td>
                <td><input name="xiaobian" type="radio" value="10"/><span>控制</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>修饰</th>
                <td><input name="xiushi" type="radio" value="0"/><span>需要帮助</span></td>
                <td><input name="xiushi" type="radio" value="5"/><span>自理(独立梳洗)</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>用厕</th>
                <td><input name="yongce" type="radio" value="0"/><span>依赖他人</span></td>
                <td><input name="yongce" type="radio" value="5"/><span>需部分帮助</span></td>
                <td><input name="yongce" type="radio" value="10"/><span>自理</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>进食</th>
                <td><input name="jinshi" type="radio" value="0"/><span>较大依赖或完全依赖</span></td>
                <td><input name="jinshi" type="radio" value="5"/><span>需部分帮助(夹菜、盛饭)</span></td>
                <td><input name="jinshi" type="radio" value="10"/><span>全面自理(做饭、取餐不算)</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>转移</th>
                <td><input name="zhuanyi" type="radio" value="0"/><span>完全依赖他人,不能坐</span></td>
                <td><input name="zhuanyi" type="radio" value="5"/><span>需大量帮助(1-2人身体帮助),能坐</span></td>
                <td><input name="zhuanyi" type="radio" value="10"/><span>需少量帮助(言语或身体)</span></td>
                <td><input name="zhuanyi" type="radio" value="15"/><span>自理</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>活动</th>
                <td><input name="huodong" type="radio" value="0"/><span>不能步行</span></td>
                <td><input name="huodong" type="radio" value="5"/><span>轮椅上能独立活动</span></td>
                <td><input name="huodong" type="radio" value="10"/><span>需1人帮助步行</span></td>
                <td><input name="huodong" type="radio" value="15"/><span>独立步行</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>穿衣</th>
                <td><input name="chuanyi" type="radio" value="0"/><span>依赖他人</span></td>
                <td><input name="chuanyi" type="radio" value="5"/><span>需一半帮助</span></td>
                <td><input name="chuanyi" type="radio" value="10"/><span>自理</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>上下楼梯</th>
                <td><input name="shangxialouti" type="radio" value="0"/><span>不能</span></td>
                <td><input name="shangxialouti" type="radio" value="5"/><span>需帮助</span></td>
                <td><input name="shangxialouti" type="radio" value="10"/><span>独立上下楼</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>洗澡</th>
                <td><input name="xizao" type="radio" value="0"/><span>依赖</span></td>
                <td><input name="xizao" type="radio" value="5"/><span>自理</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>评定总分</th>
                <th colspan="4">&lt;20分为极严重功能缺陷，生活完全需要依赖(特级、一级护理生活完全不能自理)<br />20～60分为生活需要帮助(一级、二级护理生活部分自理)<br />&gt;60分为生活自理(二级护理生活完全自理，三级护理)</th>
                <th id="total">&nbsp;</th>
            </tr>
        </table>
    </div>
    </form>
    <script type="text/javascript">
        var patients = new Array();
        var cache = new Array();
        function getRadio(obj) {
            $(obj).parent().siblings().last().text($(obj).val()).css("text-align", "center");
            var point = 0;
            $("table tr").find("td:last").each(function () {
                if (!isNaN(parseInt($(this).text())))
                    point += parseInt($(this).text());
            });
            $("#total").text(point.toString());
        }
        function ss() {
            console.log("patients");
            console.log(patients);
            $("table tr").find("td:last").each(function () {
                if (isNaN(parseInt($(this).text())))
                {
                    alert("有未评估的项目");
                    return false;
                }
            });
        }
        $(document).ready(function () {
            $("td :radio").click(function () { getRadio(this); });
            $.ajax({
                type: "GET",
                url: "dataservice.aspx",
                data: { "type":"getpatients" },
                dataType: "json",
                success: function (data) {
                    $("input[name='dept_name']").val(data.dept_name);
                    $("input[name='evaluation_staff']").val(data.name);
                    cache = data.patients;
                    patients = $.map(cache, function (item) {
                        return {
                            label: item.BED_LABEL+" "+item.NAME,
                            value: item.BED_LABEL
                        }
                    });
                    $("#ch").autocomplete({
                        source: patients,
                        minLength: 0,
                        select: function (event, ui) {
                            $.each(cache, function (i, n) {
                                if (n.BED_LABEL == ui.item.value)
                                {
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
