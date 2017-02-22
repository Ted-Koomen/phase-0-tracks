#Highway full of cars full of people

highway = {
	first_car: {
		car_type:'Ford SUV',
		driver_name: 'Teddy',
		passenger_info: {
			number_pass: 3,
			passenger_names: ["John", "Mike", "Andrew"]
		},
		speed: "50mph",
		destination: [],
		currently_playing: "T-Shirt by Migos",

	},
	second_car: {
		car_type: "BMW",
		driver_name: 'Gustaf',
		passenger_info: {
			number_pass: "1 dog",
			passenger_names: "Charlie",
		},
		speed: "120mph",
		destination: "LAS VEGAS",
		currently_playing: "Hotel California by Gypsy Kings",
	},
	third_car: {
		car_type:[],
		driver_name:"Esteban",
		passenger_info:{
			number_pass: 2,
			passenger_names: ("Gianluca" "Emilio"),
		},
		speed: "20mph",
		destination:"Yucatan",
		currently_playing: "Paper Trail$ by Joey Bada$$}",
	},
}


p highway[:third_car][:passenger_info]

p highway[:second_car][:passenger_info] 

highway[:first_car][:destination].push("Seattle, WA")

p highway[:first_car][:destination]

p highway[:second_car][:destination].downcase

p highway[:first_car][:passenger_info][:passenger_names].reverse

































