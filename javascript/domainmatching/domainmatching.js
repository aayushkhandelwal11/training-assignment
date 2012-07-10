function fndomain() {
    var x = document.getElementById("t1").value;
    var pattern = /^(((ht|f){1}(tp:[/][/]){1})|((www.){1}))[-a-zA-Z0-9@:%_\+.~#?&/=]+$/;
    if (!pattern.test(x)) {
        alert("invalid url");
        return false;
    }
    var str=x;
    var pattern=/(([A-z0-9]+[.])*)([A-z0-9]*[.][A-z]{3})[/]?/;
    var result=str.match(pattern);
    if(RegExp.$1!=null)
    alert("SubDomain is  "+RegExp.$1)
    alert("Domain is  "+ RegExp.$3);

}
