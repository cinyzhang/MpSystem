var time = "";
$(function () {
    $("#message-window").window({
        width:550,
        height:300,
        modal:true,
        closed:true,
        title:"短信验证",
        resizable:false,
        shadow:false,
        minimizable:false,
        closable:false
    });
})

//系统登录
function login(){
    var accountName=$('#accountName').val()
    var  password=$('#password').val()
    if(accountName == '' || password == ''){
        $.messager.alert('消息提示','用户名或密码不能为空','info')
        return
    }
    var loginUrl='acc/login'
    var formdata = new FormData()
    formdata.set('accountName',accountName)
    formdata.set('password',password)
    $.ajax({
        url:loginUrl,
        type:'POST',
        data:formdata,
        contentType:false,
        processData:false,
        cache:false,
        success: function (data) {
            if(data.blueshield){
                //var blueshieldlogin= 'login'
                postcall('login',{'accountName':accountName,'password':password})
                return
                }
            if(data.success){
                if(data.VERIFY_SMS){
                    $("#accoutName_2").val(data.account.accountName)
                    $("#plainpassword_2").val(data.account.plainpassword)
                    if(data.overtime){
                        $.messager.alert('警告提示','您的用户即将过期','warning')
                        $("#message-window").window('open');
                    }else{
                        $("#message-window").window('open');
                    }

                }else{
                    if(data.overtime){
                        $.messager.alert('警告提示','您的用户即将过期','warning')
                        postcall('login',{'accountName':data.account.accountName,'password':data.account.plainpassword})
                    }else{
                        postcall('login',{'accountName':data.account.accountName,'password':data.account.plainpassword})
                    }
                }

            }else{
                $.messager.alert('错误提示',data.errMsg,'error')
            }
        },
        error: function(){
            $.messager.alert('错误提示','服务器正在更新，请联系系统管理员或者稍后再试','error')
        }
    })

}
function formatDateTime() {
    var date = new Date();
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    m = m < 10 ? ('0' + m) : m;
    var d = date.getDate();
    d = d < 10 ? ('0' + d) : d;
    var h = date.getHours();
    h = h < 10 ? ('0' + h) : h;
    var minute = date.getMinutes();
    var second = date.getSeconds();
    minute = minute < 10 ? ('0' + minute) : minute;
    second = second < 10 ? ('0' + second) : second;
    return y + '-' + m + '-' + d+' '+h+':'+minute+':'+second;
};
function cancelValidate(){
    $('#messageCodeTxt').val('')
    $('#randomCodeTxt').val('')
    $('#message-window').window('close')
}
//发送短信
function getSms(){
	timeCount=60
	$('#sendMessageBtn').prop("disabled",true);
	var timeCounter=setInterval(function(){
		if(timeCount<=0) {
            clearInterval(timeCounter);
            $('#sendMessageBtn').val('获取短信')
            $('#sendMessageBtn').prop("disabled",false);
        }
		else
            $('#sendMessageBtn').val("timeout:"+(--timeCount)+"s");
	},1000)
    if(time == ""){
        time = formatDateTime();
    } else {
        time1 =  formatDateTime();

        var begin1=time.substr(0,10).split("-");
        var end1=time1.substr(0,10).split("-");

        var date1=new Date(begin1[1] + - + begin1[2] + - + begin1[0]);
        var date2=new Date(end1[1] + - + end1[2] + - + end1[0]);
        var m=parseInt(Math.abs(date2-date1)/1000/60);

        var min1=parseInt(time.substr(11,2))*60+parseInt(time.substr(14,2));
        var min2=parseInt(time1.substr(11,2))*60+parseInt(time1.substr(14,2));
        var n=min2-min1;

        var minutes=m+n;

        if(minutes < 1){
            $.messager.alert("警告提示","时间间隔小于60秒！，请60秒之后重发",'info')
            return;
        }
        time = time1;
    }
    $("#messageCodeTxt").val("")
    var url='acc/getSms'
    $.ajax({
        url:url,
        type:'GET',
        data:null,
        contentType:false,
        processData:false,
        cache:false,
        success: function (data) {
            if(!data.success){
                $.messager.alert("错误提示",data.errMsg,'error')
            }
        },
        error: function(){
            $.messager.alert('错误提示','服务器正在更新，请联系系统管理员或者稍后再试','error')
        }
    })
}
//短信验证
function verifySms(){
    var url = 'acc/verifySms'
    var smsCode= $('#messageCodeTxt').val().trim()
    if(smsCode == null || smsCode == ''){
        $.messager.alert("警告提醒","短信验证码不能为空",'info')
        return
    }

    var randomCode= $('#randomCodeTxt').val().trim()
    if(randomCode == null || randomCode == ''){
        $.messager.alert("警告提醒","图形验证码不能为空",'info')
        return
    }
    var formdata = new FormData()
    formdata.set("randomCode",randomCode)
    formdata.set("smsCode",smsCode)
    $.ajax({
        url:url,
        type:'POST',
        data:formdata,
        contentType:false,
        processData:false,
        cache:false,
        success: function (data) {
            if(!data.success){
                $.messager.alert("错误提示",data.errMsg,'error')
                $('#randomCodeTxt').val('')
                $("#checkImg").click()
            }else{
                postcall('login',{'accountName':$("#accoutName_2").val(),'password':$("#plainpassword_2").val()})
                $("#message-window").window("close")
            }
        },
        error: function(){
            $.messager.alert('错误提示','服务器正在更新，请联系系统管理员或者稍后再试','error')
        }
    })
}
//跳转主页
function homeage(staffId){

}
function postcall( url, params, target){
    var tempform = document.createElement("form");
    tempform.action = url;
    tempform.method = "post";
    tempform.style.display="none"
    if(target) {
        tempform.target = target;
    }
    for (var x in params) {
        var opt = document.createElement("input");
        opt.name = x;
        opt.value = params[x];
        tempform.appendChild(opt);
    }
    var opt = document.createElement("input");
    opt.type = "submit";
    tempform.appendChild(opt);
    document.body.appendChild(tempform);
    tempform.submit();
    document.body.removeChild(tempform);
}