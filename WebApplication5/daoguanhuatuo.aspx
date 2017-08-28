<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="daoguanhuatuo.aspx.cs" Inherits="WebApplication5.daoguanhuatuo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>住院病人导管滑脱风险评估表填报</title>
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
    <h1 style="text-align:center">住院病人导管滑脱评估表</h1>
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
                <th>1</th>
                <th>2</th>
                <th>3</th>
            </tr>
            <tr>
                <th>年龄</th>
                <td>&nbsp;</td>
                <td><input name="nianling" type="radio" value="1"/><span>7～70岁</span></td>
                <td><input name="nianling" type="radio" value="2"/><span>未满7岁或70岁以上</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>意识</th>
                <td><input name="yishi" type="radio" value="0"/><span>正常</span></td>
                <td><input name="yishi" type="radio" value="1"/><span>昏迷</span></td>
                <td><input name="yishi" type="radio" value="2"/><span>模糊，嗜睡或昏睡</span></td>
                <td><input name="yishi" type="radio" value="3"/><span>谵妄</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>精神</th>
                <td><input name="jingshen" type="radio" value="0"/><span>正常</span></td>
                <td>&nbsp;</td>
                <td><input name="jingshen" type="radio" value="2"/><span>恐惧或焦虑</span></td>
                <td><input name="jingshen" type="radio" value="3"/><span>烦躁</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>活动</th>
                <td><input name="huodong" type="radio" value="0"/><span>正常</span></td>
                <td><input name="huodong" type="radio" value="1"/><span>不能自主活动</span></td>
                <td><input name="huodong" type="radio" value="2"/><span>使用助行器，行动不稳或偏瘫</span></td>
                <td><input name="huodong" type="radio" value="3"/><span>术后3天内</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>疼痛</th>
                <td><input name="tengtong" type="radio" value="0"/><span>耐受良好</span></td>
                <td><input name="tengtong" type="radio" value="1"/><span>耐受不良</span></td>
                <td>&nbsp;</td>
                <td><input name="tengtong" type="radio" value="3"/><span>难以耐受</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>沟通</th>
                <td><input name="goutong" type="radio" value="0"/><span>良好</span></td>
                <td><input name="goutong" type="radio" value="1"/><span>一般，不理解</span></td>
                <td>&nbsp;</td>
                <td><input name="goutong" type="radio" value="3"/><span>差，不配合</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>胃管</th>
                <td><input name="weiguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><input name="weiguan" type="radio" value="3"/><span>胃管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>营养管</th>
                <td><input name="yingyangguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><input name="yingyangguan" type="radio" value="3"/><span>营养管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>胸管</th>
                <td><input name="xiongguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><input name="xiongguan" type="radio" value="3"/><span>胸管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>术区引流管</th>
                <td><input name="shuquyinliuguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><input name="shuquyinliuguan" type="radio" value="3"/><span>术区引流管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>气管切开插管</th>
                <td><input name="qiguanqiekaichaguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><input name="qiguanqiekaichaguan" type="radio" value="3"/><span>气管切开插管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>气管插管</th>
                <td><input name="qiguanchaguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><input name="qiguanchaguan" type="radio" value="3"/><span>气管插管</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>中心静脉导管</th>
                <td><input name="zhongxinjingmaidaoguan" type="radio" value="0"/><span>无</span></td>
                <td>&nbsp;</td>
                <td><input name="zhongxinjingmaidaoguan" type="radio" value="2"/><span>中心静脉导管</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>尿管</th>
                <td><input name="niaoguan" type="radio" value="0"/><span>无</span></td>
                <td><input name="niaoguan" type="radio" value="1"/><span>尿管</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>评定总分</th>
                <th colspan="4">≤8分低度危险性；8&lt;评分≤12分中度危险性；&gt;12分高度危险性<br />中度危险者每天评估每周记录；高度危险者每班评估每天记录；特殊情况随时评估随时记录</th>
                <th id="total"></th>
            </tr>
        </table>
    </div>
        
    <div>
        <p>防范措施(根据病人情况选择)：</p>
        <input type="checkbox" name="yufangcuoshi" value="明确管道标识" />明确管道标识<br />
        <input type="checkbox" name="yufangcuoshi" value="妥善固定" />妥善固定<br />
        <input type="checkbox" name="yufangcuoshi" value="保护引流通畅" />保护引流通畅<br />
        <input type="checkbox" name="yufangcuoshi" value="加强巡视" />加强巡视<br />
        <input type="checkbox" name="yufangcuoshi" value="床头插入预防管道滑脱安全标识" />床头插入预防管道滑脱安全标识<br />
        <input type="checkbox" name="yufangcuoshi" value="告知患者、家属有关注意事项" />告知患者、家属有关注意事项<br />
        <input type="checkbox" name="yufangcuoshi" value="严格遵守操作规程" />严格遵守操作规程<br />
        <input type="checkbox" name="yufangcuoshi" value="使用保护性约束" />使用保护性约束<br />
        <input type="checkbox" name="yufangcuoshi" value="遵医嘱使用镇静剂" />遵医嘱使用镇静剂<br />
        <input type="checkbox" name="yufangcuoshi" value="其他" />其他<br />
    </div>
    </form>
</body>
</html>
