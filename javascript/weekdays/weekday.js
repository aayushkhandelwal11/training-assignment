var weekday_checked=new Array();
function uncheckAll(field) {
    var i;
    for (i = 0; i < field.length; i++) {
	      field[i].checked = false;
	  }
	  weekday_checked.splice(0,weekday_checked.length)
}

function calculate(option) {
    document.getElementById("none").checked = false;
    if (option.checked == true) {
        if(weekday_checked.length<3) {
            weekday_checked.push(option.value)
        } else {
            option.checked=false;
            alert("You can only select a maximum of 3 checkboxes. Already choosen " + weekday_checked[0] + " , " + weekday_checked[1] +" and "+ weekday_checked[2])
        }
    } else {
        for(i=0;i<weekday_checked.length;i++) {
            if(weekday_checked[i]==option.value) {
                weekday_checked.splice(i,1);
            }
        }
    }
}

