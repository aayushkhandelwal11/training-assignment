var pc = 10, cal = 0, mcal = 0, counter = 0;
var action = 0, acperformed = 0, point = 0;
function perform(src) {
    point = 0;
    pc = 10;
    if (counter == 0) {
        cal = document.getElementById("t1").value;
        document.getElementById("t1").value = 0;
        action = src.value;
        acperformed = 0;
        counter = 1;
    } else {
        calculation();
        action = src.value;
    }
}
function calculation() {
    if (action == 0) {
        cal = src.value;
        counter = 0;
    }
    if (action == 1) {
        acperformed = 0;
        counter = 1;
        action = 0;
        cal = Number(cal) / Number(document.getElementById("t1").value);
    }
    if (action == 2) {
        cal = (Number(cal)) * (Number(document.getElementById("t1").value));
        acperformed = 0;
        counter = 1;
        action = 0;
    }
    if (action == 3) {
        cal = Number(cal) + Number(document.getElementById("t1").value);
        counter = 1;
        acperformed = 0;
        action = 0;
    }
    if (action == 4) {
        cal = Number(cal) - Number(document.getElementById("t1").value);
        acperformed = 0;
        counter = 1;
        action = 0;
    }
    document.getElementById("t1").value = 0;
}
function calculate(src) {
    if (acperformed == 1 && point == 1) {
        cal = 0;
        document.getElementById("t1").value = src.value;
        acperformed = 0;
    } else if (point == 1) {
        var cal2 = Number(document.getElementById("t1").value) + (Number(src.value) / pc);
        pc = pc * 10;
        document.getElementById("t1").value = cal2;
    } else {
        var cal2 = Number(document.getElementById("t1").value) * 10 + Number(src.value);
        document.getElementById("t1").value = cal2;
    }
}
function point1() {
    point = 1;
} 
function toggle() {
    document.getElementById("t1").value = -1 * document.getElementById("t1").value;
}
function clear1() {
    cal = 0;
    document.getElementById("t1").value = 0;
    counter = 0;
    acperformed = 0;
}
function show1() {
    calculation();
    document.getElementById("t1").value = cal;
    counter = 0;
    action = 0;
    acperformed = 1;
}
function madd() {
    mcal = mcal + cal;
    cal = 0;
}
function mminus() {
    mcal = mcal - cal;
    cal = 0;
}
function mtotal() {

    document.getElementById("t1").value = mcal;
}
function mclear() {
    cal = 0;
    mcal = 0;
    document.getElementById("t1").value = 0;
    counter = 0;
    acperformed = 0;
}
