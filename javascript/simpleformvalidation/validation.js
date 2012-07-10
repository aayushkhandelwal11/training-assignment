function isempty(field, message) {
    if (field.split(' ').join('').length == 0) {
        alert(message);
        return false;
    }
    return true;
}
function checklength(field, message) {
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
function fnsubmit() {
    if (isempty(document.getElementById("LoginId").value, "LoginId cannot be empty")) {
        if (isempty(document.getElementById("Email").value, "email cannot be empty")) {
            if (isempty(document.getElementById("Name").value, "Name cannot be empty")) {
                if (isempty(document.getElementById("Homepage").value, "Homepage cannot be empty")) {
                    if (checklength(document.getElementById("text1").value, "TextArea cannot be less then 50 characters")) {
                        if (ischecked(document.getElementById("checkbox1"), "Check the checkbox")) {
                       return true;
                        }  
                    } 
                }
            }
        }
    }
    return false;
}

