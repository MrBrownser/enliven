# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users creation
(1..20).each do |it|
	User.create!(
		username: Faker::Internet::user_name,
		password: "12345678",
		fullname: Faker::Name.name,
		email: Faker::Internet::email,
		born: Faker::Date.between(70.years.ago, 16.years.ago),
		styles: "Basicly poopin', but I'm doing locking and housedance as well",
		summary: Faker::Lorem.paragraph
		)
end

users = User.all

users.each do |user|
	Project.create!(
		name: Faker::Commerce.product_name,
		user_id: user.id
		)
end