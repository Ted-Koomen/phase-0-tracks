var name = ["Mr. Ed", "Seabiscuit", "Secritariat", "Jeff"];
var colors = ["blue", "orange", "purple", "red"];

colors.push("Black")
names.push("Fred")

var horse = [],
    thing;


for (var i = 0; i < name.length; i ++){
 thing = {};
 for (var i = 0; i < colors.length; i++){
 	thing[colors[i]] = name[i];
 }
 horse.push(thing);
}

console.log(horse);




function Car(make, model, year){
	console.log("New Car", this);
	this.make = make;
	this.model = model; 
	this.year = year;
	console.log("Car build complete")
}

console.log("Lets build a car...");

var new_car = new Car("Toyota", "Camry", 1986);
console.log(new_car)

