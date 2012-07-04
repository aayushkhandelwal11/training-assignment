
function isempty(field, message) {
    if (field.length == 0) {
        alert(message);
        return false;
    }
    return true;
}
function isempty1(field, message) {
    if (field.length < 50) {
        alert(message);
        return false;
    }
    return true;
}
function ischecked(field, message) {
    if (!field.checked) {
        alert(message);
        return false;
    }
    return true;
}
function validateemail(x, message) {
    var atpos=x.indexOf("@");
    var dotpos=x.lastIndexOf(".");
    if ( atpos<1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
         var pattern=/^[A-Za-z0-9._%+-]+@([A-Za-z0-9-]+\.)+([A-Za-z0-9]{2,4}|museum)$/;
         if(!pattern.test(x)) {
             alert(message);
             return false;
         }
    }
    return true;
}
function validatehome(x, message) {
var pattern = /^(((ht|f){1}(tp:[/][/]){1})|((www.){1}))[-a-zA-Z0-9@:%_\+.~#?&/=]+$/;
    if (!pattern.test(x)) {
        alert(message);
        return false;
    }
    return true;
}
function fnsubmit() {
    if (isempty(document.getElementById("LoginId").value, "LoginId cannot be empty")) {
        if (isempty(document.getElementById("Email").value, "email cannot be empty")) {
            if (isempty(document.getElementById("Name").value, "Name cannot be empty")) {
                if (isempty(document.getElementById("Homepage").value, "Homepage cannot be empty")) {
                    if (isempty1(document.getElementById("text1").value, "TextArea cannot be less then 50 characters")) {
                        if (ischecked(document.getElementById("checkbox1"), "Check the checkbox")) {
                            if (validateemail(document.getElementById("Email").value, "Not a valid e-mail address")) {
                                if (validatehome(document.getElementById("Homepage").value, "Homepage is not valid")) {
                                    return true;
                                }
                            }
                        } 
                    }
                }
            }
        }
    }
    return false;
}

