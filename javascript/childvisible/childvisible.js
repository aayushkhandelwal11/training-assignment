function showChild(parent_checkbox,child_checkbox,container1) {
    container1.style.display = (parent_checkbox.checked) ? "block" : "none";
    for(i = 0; i<child_checkbox.length;i++) {
       child_checkbox[i].checked=parent_checkbox.checked;
    }
    parent_checkbox.scrollIntoView(true);
}
