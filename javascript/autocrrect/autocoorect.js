function cal() {
    var myJSON = {"mainStore" : [{"name": "Luigi Damiano"},
            {"name": "Zenith Coboro"},
            {"name": "Zig Ziglar"},
            {"name": "Steve Costner"},
            {"name": "Bill Grazer"},
            {"name": "Timothy Frazer"},
            {"name": "Boris Becker"},
            {"name": "Glenn Gladwich"},
            {"name": "Jim Jackson"},
            {"name": "Aaron Kabin"},
            {"name": "Roy Goldwin"},
            {"name": "Jason Goldberg"},
            {"name": "Tim Ferris"},
            {"name": "Buck Singham"},
            {"name": "Malcom Gladwell"},
            {"name": "Joy Rabura"},
            {"name": "Vid Luther"},
            {"name": "Tom Glicken"},
            {"name": "Ray Baxter"},
            {"name": "Ari Kama"},
            {"name": "Kenichi Suzuki"},
            {"name": "Rick Olson"}]};
    var string1 = document.getElementById("t1").value;
    var elem = document.getElementById("ul1"), i, li, p ;
    for (i = elem.childNodes.length - 1; i >= 3; i--) {
        li = elem.getElementsByTagName('li')[i - 2];
        elem.removeChild(li);
    }
    var mainStore = myJSON.mainStore;
    for (i in mainStore) {
        var n = mainStore[i]['name'].match(string1);
        if (n != null) {
            li = document.createElement("li");
	    p = document.createTextNode(mainStore[i].name);
       	    li.text = mainStore[i].name;
            li.onclick = function () {
                show(this.text);
            }
	    li.appendChild(p,1); 
	    elem.appendChild(li); 
        }
    }
}
function show(src) {
    document.getElementById("t1").value=src;
    clear1();
}
function clear1() {
    var string1 = document.getElementById("t1").value;
    var elem = document.getElementById("ul1");
    for(i = elem.childNodes.length - 1; i >= 3; i--) {
        var li = elem.getElementsByTagName('li')[i-2];
        elem.removeChild(li);
    }
}
