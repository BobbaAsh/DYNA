

    puts 'Creating 10 fake users...'
10.times do
 user = User.create!(

  email: Faker::Internet.email,
  password: "123456",

  remember_created_at: Faker::Date.birthday,
  created_at: Faker::Date.birthday,
  updated_at: Faker::Date.birthday,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.city,
  ss_number: Faker::Number.positive,
  date_of_birth: Faker::Date.birthday,
  phone_number: Faker::PhoneNumber.phone_number

 )

end
puts 'Finished!'

puts 'Creating 5 fake events...'
5.times do
 event = Event.create!(
  name: Faker::Name.last_name,
  localisation: "Marseille",
  description: "eee",
  begin_date: Faker::Date.birthday,
  end_date: Faker::Date.birthday
  )
end
puts 'Finished!'

