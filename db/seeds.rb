User.destroy_all
Event.destroy_all
Attendance.destroy_all

User.reset_pk_sequence
Event.reset_pk_sequence
Attendance.reset_pk_sequence

20.times do 
User.create!(email: Faker::Name.initials + "@yopmail.com", description: Faker::Quote.matz, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "azeazEZAEfa")
end

20.times do
Event.create!(start_date: Faker::Date.forward, duration: 50, administrator_id: rand(1..20), price: rand(1..1000), location: Faker::Address.city, title: Faker::Superhero.name)
end

#description: Faker::TvShows::HowIMetYourMother.quote, price: Faker::Number.between(from: 1, to: 1000), location: Faker::Address.city, title: Faker::Superhero.name, administrator_id: Faker::Number.between(from: 1, to: 20))

