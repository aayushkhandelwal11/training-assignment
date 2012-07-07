var checkedcount = 0, str;
function uncheckAll(field) {
var i;
for (i = 0; i < field.length; i++) {
	field[i].checked = false; }
}

function calculate(checkgroup) {
document.getElementById("checkbox2").checked = false;
var i;
for (i = 0; i < checkgroup.length; i++) {
		checkgroup[i].onclick = function () {
		  var i ;             
		  document.getElementById("checkbox2").checked = false;
		  str=null;
		  checkedcount=0;
		  for (i = 0; i < checkgroup.length; i++) {
			    if(checkgroup[i].checked)
		      {
		         checkedcount++;
	           if(checkedcount == 1)
		         str=checkgroup[i].value
		         if(checkedcount == 2)
		         str=str+" , "+checkgroup[i].value
		         if(checkedcount == 3)
		         str=str+" and "+checkgroup[i].value
		       }
			}
		  if (checkedcount > 3){
			alert("You can only select a maximum of 3 checkboxes. Already choosen "+str)
			this.checked=false
			}
		}
	}
}
