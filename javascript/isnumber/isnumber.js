function fncalculate() {
    var s = document.getElementById("t1").value;
    var pattern = /^[-+]?\d+(\.\d+)?$/;
    if (pattern.test(s)) {
        document.getElementById("t2").value = "true";
        return true;
    } else {
        document.getElementById("t2").value = "false";
        return false;
    }
}
