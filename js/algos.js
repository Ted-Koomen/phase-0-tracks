
var array = ["long phrase","longest phrase","longer phrase"];

var lgth = 0;
var longest;

for(var i=0; i < array.length; i++){
    if(array[i].length > lgth){
        var lgth = array[i].length;
        longest = array[i];
    }      
} 

var name = ["Steven", "Tamir"];
var age = ["54", "54"];

var people = [],
	thing;

for (var i = 0; i < age.length; i ++){
 thing = {};
 for (var i = 0; i < name.length; i++){
 	thing[name[i]] = age[i];
 }
 people.push(thing);

if (name==name|| age==age){
	console.log(true);
}
else{
	console.log(false);
}
}

/*
function word_maker(num){
	var text = "";
	var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefjhijklmnopqrstuvwxyz";
	var num = Math.floor(Math.random() * 10) + 1;
	for (var i = 0; i< num: i ++){
		text +=possible.
	}
	
	console.log(num)
}
*/
//method for generating random number between
//var num = Math.floor(Math.random() * 10) + 1;

function randomString(num_words) {
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    var x = 0
    var i = 0
    var num_characters = Math.floor(Math.random() * 10 + 1)
   
	    while (i < num_characters) {
			text += possible.charAt(Math.floor(Math.random() * 10 +1));
		    i++;
		}
	
	var generated_words = [];
	generated_words.push(text);
	return generated_words
}

var randomWord = randomString(6)

array.push(randomWord)

console.log(people);
console.log(longest);
console.log(randomString(6))

