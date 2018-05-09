/**
 * 
 */
function check() {
	
	var id = document.getElementById('id').value;


	var money = document.getElementById('money').value;
	//var i = document.getElementById('i').value;
if(money==""){
		alert("金额为空");
	} else {

		document.getElementById("goForm").submit();
	}

}
