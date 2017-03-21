highway = {
	first_car: {
		driver_name: 'Teddy',
		car_info:{
			car_type: 'BMW SUV',
			number_seats: 7
		},
		passenger_info:{
			number_passengers: 2,
			are_backseat_drivers:true
		},
		trip_info:{
			destination: "unknown",
			snack_choice: "Pringles",
			song_playing: "Regulator- Clutch"
		},
	},
	
	second_car: {
		driver_name: 'Joe',
		car_info:{
			car_type: 'Camaro',
			number_seats: 2
		},
		passenger_info:{
			number_passengers: 0,
			are_backseat_drivers:false
		},
		trip_info:{
			destination: "Garden City- NY",
			snack_choice: "Protein Bar",
			song_playing: "Sultans of Swing- Dire Straits"
		},
	},
	third_car: {
		driver_name: 'Katie',
		car_info:{
			car_type: 'Ford Escape',
			number_seats: 5
			},
		passenger_info:{
			number_passengers: 2,
			are_backseat_drivers:true
			},
		trip_info:{
			destination: "South Hampton- NY",
			snack_choice: "Fig Bar",
			song_playing: "Good Together- HONNE"
			},
	}
}


p highway[:first_car][:driver_name]
p highway[:third_car][:passenger_info][:are_backseat_drivers]
p highway[:second_car][:trip_info][:snack_choice]
highway[:first_car][:driver_name] = "Teddy Koomen"
p highway[:first_car][:driver_name]