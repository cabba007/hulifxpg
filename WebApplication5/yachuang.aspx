<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yachuang.aspx.cs" Inherits="WebApplication5.yachuang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>压疮风险评估表填报</title>
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
    <h1 style="text-align:center">住院病人压疮风险评估表</h1>
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
    <p>压疮发生危险因素基本条件评估(因病情需要严格限制翻身)：</p>
        <input type="checkbox" name="jibentiaojian" value="难免压疮" />是否难免压疮<br />
        <input type="checkbox" name="jibentiaojian" value="医生开具暂不翻身医嘱" />医生开具暂不翻身医嘱<br />
        <input type="checkbox" name="jibentiaojian" id="zssjxtss" value="" />中枢神经系统损伤<span id="zssjxtssspan"></span>（<input type="radio" name="zssjxtss" value="脑卒中" />脑卒中<input type="radio" name="zssjxtss" value="脑外伤" />脑外伤<input type="radio" name="zssjxtss" value="脊髓损伤" />脊髓损伤<input type="radio" name="zssjxtss" value="不明原因" />不明原因）<br />
        <input type="checkbox" name="jibentiaojian" value="骨盆骨折" />骨盆骨折<br />
        <input type="checkbox" name="jibentiaojian" value="生命体征不稳定" />生命体征不稳定<br />
        <input type="checkbox" name="jibentiaojian" value="心脏衰竭三度" />心脏衰竭三度<br />
    </div>
    <div>
    <p>压疮发生危险因素量化评估（Braden评分表）：</p>
        <table style="width: 100%;">
            <tr>
                <th rowspan="2">危险因子</th>
                <th colspan="4">分值</th>
                <th rowspan="2">评分</th>
            </tr>
            <tr>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
            </tr>
            <tr>
                <th>感觉</th>
                <td><input name="ganjue" type="radio" value="1"/><span>完全丧失</span></td>
                <td><input name="ganjue" type="radio" value="2"/><span>严重丧失</span></td>
                <td><input name="ganjue" type="radio" value="3"/><span>轻度丧失</span></td>
                <td><input name="ganjue" type="radio" value="4"/><span>未受损害</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>潮湿</th>
                <td><input name="chaoshi" type="radio" value="1"/><span>持久潮湿</span></td>
                <td><input name="chaoshi" type="radio" value="2"/><span>十分潮湿</span></td>
                <td><input name="chaoshi" type="radio" value="3"/><span>偶尔潮湿</span></td>
                <td><input name="chaoshi" type="radio" value="4"/><span>极少潮湿</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>活动情况</th>
                <td><input name="huodongqingkuang" type="radio" value="1"/><span>卧床不起</span></td>
                <td><input name="huodongqingkuang" type="radio" value="2"/><span>局限于椅</span></td>
                <td><input name="huodongqingkuang" type="radio" value="3"/><span>辅助行走</span></td>
                <td><input name="huodongqingkuang" type="radio" value="4"/><span>活动自如</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>移动能力</th>
                <td><input name="yidongnengli" type="radio" value="1"/><span>完全不能</span></td>
                <td><input name="yidongnengli" type="radio" value="2"/><span>严重受限</span></td>
                <td><input name="yidongnengli" type="radio" value="3"/><span>轻度限制</span></td>
                <td><input name="yidongnengli" type="radio" value="4"/><span>不受限制</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>营养</th>
                <td><input name="yingyang" type="radio" value="1"/><span>严重不良</span></td>
                <td><input name="yingyang" type="radio" value="2"/><span>不良</span></td>
                <td><input name="yingyang" type="radio" value="3"/><span>中等</span></td>
                <td><input name="yingyang" type="radio" value="4"/><span>良好</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>摩擦力和剪切力</th>
                <td><input name="mocali" type="radio" value="1"/><span>有</span></td>
                <td><input name="mocali" type="radio" value="2"/><span>潜在危险</span></td>
                <td><input name="mocali" type="radio" value="3"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>评定总分</th>
                <th colspan="4">15～18分轻度危险；13～14分中度危险；10～12分重度危险；9分以下极度危险。<br />轻中度每天评估，每周记录；重度每班评估，每天记录；评分〉18无需建立评估表。</th>
                <th id="total">&nbsp;</th>
            </tr>
            </table>
        </div>
        <div>
        <p>压疮预防及治疗措施(根据病人情况选择)：</p>
        <input type="checkbox" name="yufangcuoshi" value="保持床铺和衣裤清洁、干燥、舒适、污染后及时更换" />保持床铺和衣裤清洁、干燥、舒适、污染后及时更换<br />
        <input type="checkbox" name="yufangcuoshi" value="保持皮肤清洁、干燥、及时清洗" />保持皮肤清洁、干燥、及时清洗<br />
        <input type="checkbox" name="yufangcuoshi" value="定时翻身" />定时翻身<br />
        <input type="checkbox" name="yufangcuoshi" value="给予气垫床" />给予气垫床<br />
        <input type="checkbox" name="yufangcuoshi" value="加强营养，采取适当的营养支持措施" />加强营养，采取适当的营养支持措施<br />
        <input type="checkbox" name="yufangcuoshi" value="局部贴透明贴" />局部贴透明贴<br />
        <input type="checkbox" name="yufangcuoshi" value="局部创面贴溃疡贴" />局部创面贴溃疡贴<br />
        <input type="checkbox" name="yufangcuoshi" value="局部伤口按外科换药" />局部伤口按外科换药<br />
        <input type="checkbox" name="yufangcuoshi" value="给予减压用具" />给予减压用具<br />
        <input type="checkbox" name="yufangcuoshi" value="其他" />其他<br />
        </div>
    </form>
    <script type="text/javascript">
        function getRadio(obj) {
            $(obj).parent().siblings().last().text($(obj).val()).css("text-align", "center");
            var point = 0;
            $("table tr").find("td:last").each(function () {
                if (!isNaN(parseInt($(this).text())))
                    point += parseInt($(this).text());
            });
            $("#total").text(point.toString());
        }
        $(function () {
            $("td :radio").click(function () { getRadio(this); });
            $("input[name='zssjxtss']").click(function () {
                var str = $(this).val();
                $("#zssjxtssspan").text(str);
                $("#zssjxtss").val(str).attr("checked",true);
            });
            $("#zssjxtss").click(function () {
                $("input[name='zssjxtss']").attr("checked", false);
            });
        });
    </script>
</body>
</html>
