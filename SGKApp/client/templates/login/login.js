import './login.html';
import { Template } from 'meteor/templating';
import './login.html';

var signingUp = true;

var button = document.getElementById("button");
console.log(button);
button.innerHTML = "test"
button.onclick = function(){
    signingUp = !signingUp;

    if(signingUp){
        button.innerText = "Sign up";
    }
    else{
        button.innerText = "Log in";
    }
};
