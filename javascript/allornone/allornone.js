function decide(field,decision) {
var i;
for (i=0; i < field.length; i++)
	{
	
	if(decision=="check")
	field[i].checked = true;
	else
	field[i].checked = false;
   }
}

