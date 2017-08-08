# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = {}

ActiveRecord::Base.transaction do
	20.times do 
    user['name'] = Faker::Name.first_name + Faker::Name.last_name
    user['address'] = Faker::Address.country + Faker::Address.state + Faker::Address.city + Faker::Address.zip_code + Faker::Address.street_address
    user['birthday'] = Faker::Date.between(50.years.ago, Date.today)
    user['description'] = Faker::Hipster.sentence

    User.create(user)
  end
end 