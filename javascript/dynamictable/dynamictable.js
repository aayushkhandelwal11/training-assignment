var r = 0;
function addRow() {
    var t = document.getElementsByTagName('t1'), oCell;
    if (r == 0) {
        var newRow = document.all("tblGrid").insertRow(1);
        r = r + 1;
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='button' value='Save' onclick='saveRow(this)'/>";
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='text' id='t1' name='t1'>";
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='text' id='t2' name='t2'>";
    } else {
        alert("first save older rows");
    }
}
function saveRow(src) {
    var oRow = src.parentElement.parentElement;
    var x = document.getElementById("t2").value;
    var y = document.getElementById("t1").value;
    document.all("tblGrid").deleteRow(oRow.rowIndex);
    var newRow = document.all("tblGrid").insertRow(1);
    r = r - 1;
    oCell = newRow.insertCell();
    oCell.innerHTML = "<a href='#' onclick='removeRow(this)'>Delete</a>/<a href='#' onclick='editRow(this)'>Edit</a>"; 
    oCell = newRow.insertCell();
    oCell.innerHTML = y;
    oCell = newRow.insertCell();
    oCell.innerHTML = x;

}
function editRow(src) {
    var t = document.getElementsByTagName('t1');
    if (r == 0) {
        var oRow = src.parentElement.parentElement;
        var x = oRow.cells[0].innerHTML;
        var y = oRow.cells[1].innerHTML;
        j = oRow.rowIndex;
        document.all("tblGrid").deleteRow(oRow.rowIndex);
        var newRow = document.all("tblGrid").insertRow(j);
        r = r + 1;
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='button' value='Save' onclick='saveRow(this)'/>";   
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='text' id='t1' name='t1' value=" + y + ">";
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='text' id='t2' name='t2' value=" + x + ">";
    } else {
        alert("first save older rows");
    }
}

function removeRow(src) {
    var oRow = src.parentElement.parentElement;
    document.all("tblGrid").deleteRow(oRow.rowIndex);
}
