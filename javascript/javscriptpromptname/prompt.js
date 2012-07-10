function prompter() {
   var reply = prompt("What's your first name?", "");
   if(reply.split(' ').join('').length==0) {
      alert("first name is empty try again");
      prompter();
      return 0;
   }
   alert("hello " + reply + "!");
   rply = prompt("What's your last name?", "");
   if(rply.split(' ').join('').length==0) {
       alert("last name is empty try again");
       prompter();
       return 0;
   }
   alert("hello  " + reply + "  " + rply);
   document.getElementById("demo").innerHTML = reply + "  " + rply;
}
