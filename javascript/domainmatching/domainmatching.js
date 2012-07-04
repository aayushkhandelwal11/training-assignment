function fndomain() {
    var x = document.getElementById("t1").value;
    var pattern = /^(((ht|f){1}(tp:[/][/]){1})|((www.){1}))[-a-zA-Z0-9@:%_\+.~#?&/=]+$/;
    if (!pattern.test(x)) {
        alert("invalid url");
        return false;
    }
    if (x.match(/http:/)) {
        x = x.split("http://");
    } else if (x.match(/ftp:/)) {
        x = x.split("ftp://");
    } else if (x.match(/https:/)) {
        x = x.split("https://");
    }
    if (x[1].match(/www./)) {
        x = x[1];
        x = x.split("www.");
    }
    x = x[1].split("/");
    x = x[0].split(".");
    if (x.length == 2) {
        alert("domain is" + x[0]);
    } else {
        alert("domain is" + x[1]);
        alert("Subdomain is" + x[0]);
    }
    return true;
}
