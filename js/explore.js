//First declare variable of string using var
var str = "Hello"
//call function for reversing string
function reverseString(str){
	//create a new string that will be the old string in reverse
	var stringReverse = "";

	//create the for loop. Loop should start at the end of the string
	//continue loop until 'i' is less than or equal to -

	for (var i = str.length - 1; i>=0; i--) {
		stringReverse += str[i]
	}

	return stringReverse
}

console.log(reverseString('teddy'));


function is_scared_of_js(){
	var js_emotions = "Very scared of JS!";
	if (1 === 1 ) {
		console.log(js_emotions);
	}
}

is_scared_of_js()


