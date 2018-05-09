/**
 * 
 */
function check() {
	
	var id = document.getElementById('id').value;

	var idz = document.getElementById('idz').value;
	var money = document.getElementById('money').value;
	//var i = document.getElementById('i').value;
	if (idz=="") {
		alert('账户不能为空');

	} else if(money==""){
		alert("金额为空");
	} else {

		document.getElementById("goForm").submit();
	}

}
