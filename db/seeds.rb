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
		actingexp: Faker::Lorem.paragraph(2),
		battleexp: Faker::Lorem.paragraph(2),
		adsexp: Faker::Lorem.paragraph(2),
		teachingexp: Faker::Lorem.paragraph(2)
		)
end

# Projects creation
users = User.all

users.each do |user|
	rand(10).times do |it|
		user.projects.create!(
			name: Faker::Commerce.product_name,
			company: Faker::Company.name,
			description: Faker::Company.catch_phrase + Faker::Lorem.paragraph(1),
			total_likes: Faker::Number.number(2)
			)
	end
end

# Media creation
projects = Project.all

projects.each do |project|
	rand(10).times do |it|
		project.media.create!(
			mediatype: "photo",
			description: Faker::Hacker.say_something_smart,
			link: "http://lorempixel.com/"+ rand(200...400).to_s + "/" + rand(200...4000).to_s + "/fashion"
			)
	end
	# rand(10).times do |it|
	# 	ProjectMedium.create!(
	# 		type: "video"
	# 		)
	# end
end

# Wildcarduser creation
wild_card_user = User.create!(
	username: "admin",
	password: "1234",
	fullname: "Admin user",
	email: "admin@enliven.com",
	born: Faker::Date.between(28.years.ago, 26.years.ago),
	)

wild_card_user.projects.create!(
	name: "Project for checking things",
	company: "enliven inc.",
	)