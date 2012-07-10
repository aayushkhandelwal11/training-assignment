var r = 0;

var t = document.getElementsByTagName('t1'), ocell;
//var dtable=document.getElementById("tblGrid");
function addRow() {
        var dtable=document.getElementById("tblGrid");
        var newRow = dtable.insertRow(-1);
        j = newRow.rowIndex;
         oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='button' value='Save' onclick='saveRow(this)'/>";
     
        oCell = newRow.insertCell();
        var textbox=document.createElement("input");
        textbox.id=j+"1";
        oCell.appendChild(textbox);
        oCell = newRow.insertCell();
        var textbox=document.createElement("input");
        textbox.id=j+"2"
        oCell.appendChild(textbox);
       
}
function saveRow(src) {
    var dtable=document.getElementById("tblGrid");
    var oRow = src.parentElement.parentElement;
    j = oRow.rowIndex;
    var x = document.getElementById(j+"2").value;
    var y = document.getElementById(j+"1").value;
    
    dtable.deleteRow(j);
    
    var newRow = dtable.insertRow(j);
   
  
    oCell = newRow.insertCell();
    oCell.innerHTML = "<a href='#' onclick='removeRow(this)'>Delete</a>/<a href='#' onclick='editRow(this)'>Edit</a>"; 
    oCell = newRow.insertCell();
    var label=document.createElement("input");
    label.id=j+"1";
    label.value=y;   
    label.readOnly = true;
    
    oCell.appendChild(label)
    oCell = newRow.insertCell();
    label=document.createElement("input");
    label.id=j+"2";
    label.value=x;   
    label.readOnly = true;

    oCell.appendChild(label)
    
}
function editRow(src) {
        var oRow = src.parentElement.parentElement;
        var dtable=document.getElementById("tblGrid");
        j = oRow.rowIndex;
        var x = document.getElementById(j+"2").value;
        var y = document.getElementById(j+"1").value;
        
        dtable.deleteRow(j);
        var newRow = dtable.insertRow(j);
        oCell = newRow.insertCell();
        oCell.innerHTML = "<input type='button' value='Save' onclick='saveRow(this)'/>";   
        oCell = newRow.insertCell();
        var textbox=document.createElement("input");
        textbox.id=j+"1";
        textbox.value=y
        oCell.appendChild(textbox);
        oCell = newRow.insertCell();
        var textbox=document.createElement("input");
        textbox.id=j+"2"
        textbox.value=x
        oCell.appendChild(textbox);
   
}

function removeRow(src) {
    var oRow = src.parentElement.parentElement;
    document.all("tblGrid").deleteRow(oRow.rowIndex);
}
