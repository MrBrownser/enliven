require 'faker'

namespace :enliven do
	desc "Seed database with semi-real data"
	task seed_real_data: :environment do
		if Rails.env == "development"
			m = User.create!(
				username: "Murelio",
				password: "1234",
				email: "mure@example.com",
				fullname: "Adolfo Pajares Piñol",
				styles: "Bboying (breakdance) basicly, but also poppin' and lockin'",
				summary: Faker::Lorem.paragraphs(1),

				born: Date.today - 28.years,
				nationality: "Malaysia",
				ethnicity: "Malay",
				languages: "Spanish, english and catalan",
				
				height: Faker::Number.number(2),
				chest: Faker::Commerce.price,
				waist: Faker::Commerce.price,
				hips: Faker::Commerce.price,
				suit: Faker::Lorem.word,
				shirt: Faker::Lorem.word,
				pants: Faker::Lorem.word,
				shoes: Faker::Commerce.price,
				eyes: Faker::Lorem.word,
				hair: Faker::Lorem.word,

				actingexp: Faker::Lorem.paragraphs(2),
				battleexp: Faker::Lorem.paragraphs(1),
				adsexp: Faker::Lorem.paragraphs(3),
				teachingexp: Faker::Lorem.paragraphs(2),
				)
			i = User.create!(
				username: "Izaskuni",
				password: "1234",
				email: "izas@example.com",
				fullname: "Gloria Divina Soleada",
				styles: "All stand-up hip-hop origin styles, including locking, popping, housedance etc...",
				summary: Faker::Lorem.paragraphs(1),

				born: Date.today - 24.years,
				nationality: "Barcelona, Spain",
				ethnicity: "Malay",
				languages: "Spanish, english and catalan",
				
				height: Faker::Number.number(2),
				chest: Faker::Commerce.price,
				waist: Faker::Commerce.price,
				hips: Faker::Commerce.price,
				suit: Faker::Lorem.word,
				shirt: Faker::Lorem.word,
				pants: Faker::Lorem.word,
				shoes: Faker::Commerce.price,
				eyes: Faker::Lorem.word,
				hair: Faker::Lorem.word,

				actingexp: Faker::Lorem.paragraphs(2),
				battleexp: Faker::Lorem.paragraphs(1),
				adsexp: Faker::Lorem.paragraphs(3),
				teachingexp: Faker::Lorem.paragraphs(2),
				)

			m.projects.create!(
				name: "Mure's project 1",
				company: "Ajuntament de Bracelona",
				description: "A project made for the Barcelona council in between of a project of collaboration with children schools",
				total_likes: 200
				)
			m.projects.create!(
				name: "Mure's project 2",
				company: "Vodafone Spain",
				description: "A project made for Vodafone for a new Motorola V4 launchment",
				total_likes: 201
				)
			i.projects.create!(
				name: "Izaskun's project 1",
				company: "Ajuntament de Bracelona",
				description: "A project made for the Barcelona council in between of a project of collaboration with children schools",
				total_likes: 190
				)
			i.projects.create!(
				name: "Izaskun's project 2",
				company: "Ajuntament de Bracelona",
				description: "A project made for the Barcelona council in between of a project of collaboration with children schools",
				total_likes: 303
				)
		else
			puts "\nTask not meant to be run in other environment but development"
		end
	end
end