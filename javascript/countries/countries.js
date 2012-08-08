function action(value) {
    var selectobject,i,x;
    if(value=="add")
    {
     selectobject=document.getElementById("left");
      x= document.getElementById("right");
    }
    if(value=="remove")
    {
     selectobject=document.getElementById("right");
      x= document.getElementById("left");
    }
    for (i = 0; i < selectobject.length; i++) {
        if (selectobject.options[i].selected) {
           
            var option = document.createElement("option");
            option.text = selectobject.options[i].text;
            selectobject.remove(i);
            i--;
            x.add(option, x.options[null]);
        }
    }
}

