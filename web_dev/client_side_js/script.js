console.log("Hello World!");

var sentance = document.getElementById("text");
var photo = document.getElementById("red-panda");

function addBlackBorder(event){
	event.target.style.border = "5px solid black";
}

function turnFontRed(event){
	event.target.style.color = "red";
}


function ChangeFont(event){
	event.target.style.fontFamily = "sans-serif";
}



document.addEventListener("click",turnFontRed);
document.addEventListener("click",ChangeFont);
document.addEventListener("click",addBlackBorder);
