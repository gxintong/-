/*
 * @author lihang
 * 判断两次密码是否一致
 *
 */
function ifSame(){

	var pass = $("input[name='password']").val();
	var conPass = $("input[name='conPassword']").val();
	if(pass==null||conPass==null){
		alert("请输入内容");
		return false;
	}

	if(pass!=conPass){

		alert("输入的两次密码不一致");
		return false;
	}
	alert("修改成功请重新登录");
	return true;
}