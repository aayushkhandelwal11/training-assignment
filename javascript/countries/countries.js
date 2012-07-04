function add1() {
    var selectobject=document.getElementById("left1"), i;
    for (i = 0; i < selectobject.length; i++) {
        if (selectobject.options[i].selected) {
            var x = document.getElementById("right1");
            var option = document.createElement("option");
            option.text = selectobject.options[i].text;
            selectobject.remove(i);
            i--;
            x.add(option, x.options[null]);
        }
    }
}
function remove1() {
    var selectobject=document.getElementById("right1"), i;
    for (i = 0; i < selectobject.length; i++) {
        if (selectobject.options[i].selected) {
            var x = document.getElementById("left1");
            var option = document.createElement("option");
            option.text = selectobject.options[i].text;
            selectobject.remove(i);
            i--;
            x.add(option, x.options[null]);
        }
    }
}
