function func() {
    var site = prompt("site name", "http:\\www.google.com");
    if (site.trim(' ').length == 0) {
       alert("its empty");
       func();
       return false;
    } else {
        window.open(site, '', 'toolbar=no,menubar=no,tittlbar=no,width=400,height=450');
    }
}
