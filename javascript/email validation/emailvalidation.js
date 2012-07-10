function isChecked(field) {
    if (!field.checked) {
    alert("please check the notification")
        
        return false;
    }
    return true;
}
function validate_email(x, message) {

         var pattern=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/  
         if(!pattern.test(x)) {
             alert(message);
             return false;
         }
    
    return true;
}
function validate_home(x, message) {
var pattern = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/ ; 
    if (!pattern.test(x)) {
        alert(message);
        return false;
    }
    return true;
}
function fnsubmit() {
     for(i=1;i<5;i++) {
     var field=document.getElementById("text"+i);
    
    if(field.value.trim(' ').length == 0){
    alert(field.name+"  can't be left empty");
    return false;
    }
    }
    
    var field=document.getElementById("text5");
    
    if(field.value.trim(' ').length <50)
    {
    alert("minimum 50 character should be their in about me")
    return false;
    }
    
    if(validate_home(document.getElementById("text4").value,"Invalid homePage")&&validate_email(document.getElementById("text2").value,"Invalid email")) { 
        if(isChecked(document.getElementById("checkbox1")))
        {  
           alert(document.getElementById("text1").value)
           return true;
        }
     }
    return false;
}

