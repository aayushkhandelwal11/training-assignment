function makevisible(field) {
    document.getElementById("divCheckbox").style.visibility = (field.checked) ? "visible" : "hidden";
    if(document.getElementById("divCheckbox").style.visibility=="hidden") {
    var j=document.getElementsByName("color1");
    for(i = 0; i<j.length;i++) {
        j[i].checked=false;
        }
    } 
document.getElementById("divCheckbox").focus();
}
function makevisible1(field) {
document.getElementById("divCheckbox1").style.visibility = (field.checked) ? "visible" : "hidden";
   if(document.getElementById("divCheckbox1").style.visibility=="hidden") {
      var j=document.getElementsByName("muvie1");
      for(i = 0; i<j.length;i++) {
         j[i].checked=false;
         }
    } 
document.getElementById("divCheckbox1").focus();
}
function makevisible2(field) {
document.getElementById("divCheckbox2").style.visibility = (field.checked) ? "visible" : "hidden";
   if(document.getElementById("divCheckbox2").style.visibility=="hidden") {
      var j=document.getElementsByName("bike1");
      for(i = 0; i<j.length;i++) {
         j[i].checked=false;
         }
    } 
document.getElementById("divCheckbox2").focus();
}
function makevisible3(field) {
document.getElementById("divCheckbox3").style.visibility = (field.checked) ? "visible" : "hidden";
   if(document.getElementById("divCheckbox3").style.visibility=="hidden") {
      var j=document.getElementsByName("drink1");
      for(i = 0; i<j.length;i++) {
         j[i].checked=false;
         }
    } 
document.getElementById("divCheckbox3").focus();
}
