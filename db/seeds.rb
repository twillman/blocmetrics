# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  User.create!(
  email:    Faker::Internet.email,
  password: Faker::Internet.password
  )
end
users = User.all

20.times do
  RegisteredApplication.create!(
  name:     Faker::Lorem.word,
  url:      Faker::Internet.url,
  user:     users.sample
  )
end
registered_applications = RegisteredApplication.all

50.times do
  Event.create!(
  name:     Faker::Lorem.word,
  registered_application: registered_applications.sample
  )
end

member = User.create(
  email: "member@example.com",
  password: "helloworld"
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"
