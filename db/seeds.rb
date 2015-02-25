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
		username: (Faker::Internet::user_name).split(".")[0],
		password: "12345678",
		fullname: Faker::Name.name,
		email: Faker::Internet::email,
		born: Faker::Date.between(70.years.ago, 16.years.ago),
		styles: "Basicly poopin', but I'm doing locking and housedance as well",
		summary: Faker::Lorem.paragraph,
		nationality: Faker::Address.country,
		profile_picture: open(Faker::Avatar.image),
		actingexp: Faker::Lorem.paragraphs(2, true),
		battleexp: Faker::Lorem.paragraphs(2, true),
		adsexp: Faker::Lorem.paragraphs(2, true),
		teachingexp: Faker::Lorem.paragraphs(2, true)
		)
end

users = User.all

users.each do |user|
	rand(10).times do |it|
		Project.create!(
			name: Faker::Commerce.product_name,
			# name: "Project From user: #{user.id}",
			user_id: user.id,
			total_likes: Faker::Number.number(2)
			)
	end
end