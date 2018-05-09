/**
 * 
 */
function check() {
	var name = document.getElementById('username').value;//用户名
	
	var pass = document.getElementById('password').value;//密码
	if (name == "") {
		alert('用户名不能为空');

	} else if (pass == "") {
		alert('密码不能为空');

	} else {
		document.getElementById("baseForm").submit();
	}

}
