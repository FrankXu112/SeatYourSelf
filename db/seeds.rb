puts "\nMaker Restaurant"
10.times do 
	Restaurant.create(
		name: Faker::Company.name,
		address: Faker::Address.street_address,
		phone: Faker::PhoneNumber.phone_number
		)
	print "|"
end

puts "\nMaker User"
10.times do 
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: "123",
		password_confirmation: "123"
		)
	print "|"
end

puts "\nMaker Reservation"
10.times do 
	Reservation.create(
		seats: rand(2..10),
		datetime: Faker::Time.between(2.days.ago, Time.now),
		user_id: User.all.sample.id,
		restaurant_id: Restaurant.all.sample.id
		)
	print "|"
end


puts "\nMaker reviews ..."
10.times do 
	Review.create(
		comment: Faker::Hacker.say_something_smart,
		rating: rand(0..5),
		user_id: User.all.sample.id,
		restaurant_id: Restaurant.all.sample.id
		)
	print "|"
end