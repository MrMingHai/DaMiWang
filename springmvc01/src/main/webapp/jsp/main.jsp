<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${ctx}/tour/add"  name="myForm"  method="post" onsubmit="return onSub()">
    <table>
        <tr>
            <td>请输入国家:</td>
            <td><input type="text" id="contry" name="tourCity"></td>
        </tr>
        <tr>
            <td>请输入区域:</td>
            <td><input type="text" id="place" name="tourPlace"></td>
        </tr>
        <tr>
            <td>请输入旅游记录:</td>
            <td><textarea cols="20" rows="4" id="jilu" name="tourNote"> </textarea></td>
        </tr>
        <tr>
            <td>请输入时间:</td>
            <td><input type="date" id="time" name="tourTime"></td>
        </tr>

    </table>

    <input type="submit" id="sub" value="提交"> <a href="${ctx}/tour/selectAll">查询所有信息</a>

</form>
<script>
        function onSub() {
            if(myForm.tourCity.value!=""){
                if(myForm.tourPlace.value!=""){
                    if(myForm.tourNote.value!=""){
                        if(myForm.tourTime.value!=""){
                            return true;
                        }else {
                            alert("请输入时间")
                            return false;
                        }
                    }else {
                        alert("请输入心得")
                        return false;
                    }
                }else {
                    alert("请输入地点")
                    return false;
                }
            }else {
                alert("请输入国家")
                return false;
            }
        }


        //json 代码

        <%--$("#sub").click(function(){--%>
            <%--alert(11111)--%>
            <%--var tourCity=$('#contry').val();--%>
            <%--var tourPlace=$('#place').val();--%>
            <%--var tourNote=$('#jilu').val();--%>
            <%--var values=$('#time').val();--%>

            <%--var data={--%>
                <%--"tourCity":tourCity,--%>
                <%--"tourPlace":tourPlace,--%>
                <%--"tourNote":tourNote,--%>
                <%--"tourTime":values--%>
            <%--}--%>
            <%----%>
            <%--if(tourCity!=''&&tourCity!=undefined){--%>
                <%--if(tourPlace!=''&&tourPlace!=undefined){--%>
                    <%--if(tourNote!=''&&tourNote!=undefined){--%>
                         <%--if(tourTime!=''&&tourTime!=undefined){--%>
                            <%--$.ajax({--%>
                                <%--url:'${ctx}/tour/add',--%>
                                <%--type:'post',--%>
                                contentType:'application/json',
                                data:JSON.stringify(data),
                                <%--success:function (data) {--%>
                                    <%--if(data.flag==true){--%>
                                        <%--alert("添加成功!")--%>
                                    <%--}else{--%>
                                        <%--alert("添加失败")--%>
                                    <%--}--%>
                                <%--}--%>
                            <%--})--%>
                        <%--// }else{--%>
                        <%--//     alert("请输入时间");--%>
                        <%--//     return;--%>
                        <%--// }--%>
                    <%--}else{--%>
                        <%--alert("请输入旅游记录");--%>
                        <%--return;--%>
                    <%--}--%>
                <%--}else{--%>
                    <%--alert("请输入区域");--%>
                    <%--return;--%>
                <%--}--%>
            <%--}else{--%>
                <%--alert("请输入国家");--%>
                <%--return;--%>
            <%--}--%>
        <%--})--%>


</script>
</body>
</html>
