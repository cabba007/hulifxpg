<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="diedao.aspx.cs" Inherits="WebApplication5.diedao" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>跌倒坠床风险评估表填报</title>
    <link href="Scripts/jquery-ui.min.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.min.js"></script>
    <style type="text/css">
        table {
            font-family: verdana,arial,sans-serif;
            font-size: 13px;
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
            vertical-align: middle;
            text-align: center;
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

        @media print {
            body * {
                visibility: hidden;
            }

            #section-to-print, #section-to-print * {
                visibility: visible;
            }

            #section-to-print {
                position: absolute;
                left: 0;
                top: 0;
            }
        }
        @media screen {
            #section-to-print, #section-to-print * {
                visibility: hidden;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <h2 style="text-align:center">监利县人民医院</h2>
    <h1 style="text-align:center">住院病人跌倒/坠床高危因子评估表</h1>
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
                <td><input name="nianling" type="radio" value="0"/><span>0～19岁</span></td>
                <td><input name="nianling" type="radio" value="1"/><span>20～59岁</span></td>
                <td><input name="nianling" type="radio" value="2"/><span>60～70岁</span></td>
                <td><input name="nianling" type="radio" value="3"/><span>70岁以上</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>跌倒史</th>
                <td><input name="diedaoshi" type="radio" value="0"/><span>半年前</span></td>
                <td><input name="diedaoshi" type="radio" value="1"/><span>半年内</span></td>
                <td><input name="diedaoshi" type="radio" value="2"/><span>三月内</span></td>
                <td><input name="diedaoshi" type="radio" value="3"/><span>一月内</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>平衡能力</th>
                <td><input name="pinghengnengli" type="radio" value="0"/><span>活动自如</span></td>
                <td><input name="pinghengnengli" type="radio" value="1"/><span>扶助行走</span></td>
                <td><input name="pinghengnengli" type="radio" value="2"/><span>需要辅助装置</span></td>
                <td><input name="pinghengnengli" type="radio" value="3"/><span>局限于床、椅</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>精神状态</th>
                <td><input name="jingshenzhuangtai" type="radio" value="0"/><span>定向力良好</span></td>
                <td><input name="jingshenzhuangtai" type="radio" value="1"/><span>时间或地点定向障碍</span></td>
                <td><input name="jingshenzhuangtai" type="radio" value="2"/><span>环境定向障碍</span></td>
                <td><input name="jingshenzhuangtai" type="radio" value="3"/><span>环境和（或）自我定向障碍</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>营养及睡眠</th>
                <td><input name="yingyangjishuimian" type="radio" value="0"/><span>良好</span></td>
                <td><input name="yingyangjishuimian" type="radio" value="1"/><span>中等</span></td>
                <td><input name="yingyangjishuimian" type="radio" value="2"/><span>不良</span></td>
                <td><input name="yingyangjishuimian" type="radio" value="3"/><span>严重不良</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>视力</th>
                <td><input name="shili" type="radio" value="0"/><span>正常</span></td>
                <td><input name="shili" type="radio" value="1"/><span>佩戴眼镜</span></td>
                <td><input name="shili" type="radio" value="2"/><span>视力模糊</span></td>
                <td><input name="shili" type="radio" value="3"/><span>失明</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>表达能力</th>
                <td><input name="biaodanengli" type="radio" value="0"/><span>正常</span></td>
                <td><input name="biaodanengli" type="radio" value="1"/><span>语言缺乏</span></td>
                <td><input name="biaodanengli" type="radio" value="2"/><span>言语障碍</span></td>
                <td><input name="biaodanengli" type="radio" value="3"/><span>严重言语障碍</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>服用特殊药物</th>
                <td><input name="fuyongteshuyaowu" type="radio" value="0"/><span>未使用</span></td>
                <td><input name="fuyongteshuyaowu" type="radio" value="1"/><span>降压</span></td>
                <td><input name="fuyongteshuyaowu" type="radio" value="2"/><span>镇痛利尿</span></td>
                <td><input name="fuyongteshuyaowu" type="radio" value="3"/><span>镇静、催眠、麻醉、精神类药</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>慢性病</th>
                <td><input name="manxingbing" type="radio" value="0"/><span>无</span></td>
                <td><input name="manxingbing" type="radio" value="1"/><span>一种</span></td>
                <td><input name="manxingbing" type="radio" value="2"/><span>一种以上</span></td>
                <td><input name="manxingbing" type="radio" value="3"/><span>多种</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>尿失禁</th>
                <td><input name="niaoshijin" type="radio" value="0"/><span>无</span></td>
                <td><input name="niaoshijin" type="radio" value="1"/><span>频率增加</span></td>
                <td><input name="niaoshijin" type="radio" value="2"/><span>夜尿症、压迫性尿失禁</span></td>
                <td><input name="niaoshijin" type="radio" value="3"/><span>急迫性尿失禁留置导管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>评定总分</th>
                <th colspan="4">0～9分低度危险性；10～19分中度危险性；20～30分高度危险性。</th>
                <th id="total">&nbsp;</th>
            </tr>
        </table>
    
    </div>
    </form>
    <button onclick="ss()">提交</button>
    <div id="section-to-print">
    <h2 style="text-align:center">监利县人民医院</h2>
    <h1 style="text-align:center">住院病人跌倒/坠床高危因子评估表</h1></div>
    
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

