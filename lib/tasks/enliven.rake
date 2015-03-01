require 'faker'

# TODO: Refactorize all this code ASAP

## URL's:

# Patiño
# https://www.facebook.com/sergio.patino.378

# Ruth
# https://www.facebook.com/ruth.prim

# Valen
# https://www.facebook.com/valen.lunaticks

# Grazy
# https://www.facebook.com/gracielpage

# Meest K
# https://www.facebook.com/Meesty.k

# Boogie
# https://www.facebook.com/boogie.prod

# Almudena
# https://www.facebook.com/almudena.medina.5

# Jona
# https://www.facebook.com/bboyjona.fsc


namespace :enliven do
	desc "Seed database with semi-real data"
	task seed_real_data: :environment do
		if Rails.env == "development"
			Creation.create_patinyo_media(Creation.create_patinyo())
			Creation.create_ruth_media(Creation.create_ruth())
		else
			puts "\nTask not meant to be run in other environment but development"
		end
	end
end

private
class Creation
	def self.create_patinyo()
		p = User.create!(
			username: "PatiñoRock",
			password: "1234",
			fullname: "Sergio Patiño",
			email: "patiño@example.com",
			born: Faker::Date.between(22.years.ago, 20.years.ago),
			styles: "Bboying (breakdance) basicly, but I know the basics of most of HipHop styles",
			summary: Faker::Lorem.paragraph(1),
			profile_picture: open("https://scontent-mad.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/10501890_10204059017257070_1701768582731525652_n.jpg?oh=bb591f1933c35ae8e6643d1b58050ddd&oe=558FC030"),

			nationality: "Barcelona, SPAIN",
			ethnicity: "Spanish",
			languages: "Spanish and catalan",
			
			height: Faker::Number.number(2),
			chest: Faker::Commerce.price,
			waist: Faker::Commerce.price,
			hips: Faker::Commerce.price,
			suit: "M",
			shirt: "L",
			pants: "42",
			shoes: 41,
			eyes: "Dark brown",
			hair: "Short, brown",

			actingexp: Faker::Lorem.paragraph(2),
			battleexp: Faker::Lorem.paragraph(1),
			adsexp: Faker::Lorem.paragraph(3),
			teachingexp: Faker::Lorem.paragraph(2),
			)

		p_p1 = p.projects.create!(
			name: "Break in general",
			company: "Personal pictures",
			description: "This is a recopilatory of photos of me dancing in competitions and training",
			total_likes: 48
			)


		p_p2 = p.projects.create!(
			name: "Street Dance Area",
			company: "Street Dance Area dance academy",
			description: "These are pictures of the Dance School where I teach. We do classes, shows and we also compete in events all over Spain and some parts of the outside",
			total_likes: 123
			)

		[p_p1, p_p2]
	end

	def self.create_ruth()
		r = User.create!(
			username: "Ruth Bwmns",
			password: "1234",
			fullname: "Ruth Prim",
			email: "ruth@example.com",
			born: Faker::Date.between(22.years.ago, 20.years.ago),
			styles: "HipHop, HipHop Freestyle, Newstyle, HouseDance",
			summary: Faker::Lorem.paragraph(1),
			profile_picture: open("https://scontent-mad.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/10325172_10204187334498036_4960127145568139254_n.jpg?oh=0cf21649096e77f7083ddd1a260cdd29&oe=554C2992"),

			nationality: "Barcelona, SPAIN",
			ethnicity: "Latin - Spanish",
			languages: "Spanish, catalan and English",
			
			height: Faker::Number.number(2),
			chest: Faker::Commerce.price,
			waist: Faker::Commerce.price,
			hips: Faker::Commerce.price,
			suit: "M",
			shirt: "M",
			pants: "38",
			shoes: 39,
			eyes: "Dark brown",
			hair: "Long, curly brown",

			actingexp: Faker::Lorem.paragraph(2),
			battleexp: Faker::Lorem.paragraph(1),
			adsexp: Faker::Lorem.paragraph(3),
			teachingexp: Faker::Lorem.paragraph(2),
			)

		r_p1 = r.projects.create!(
			name: "Events",
			company: "Myself battling and dancing",
			description: "Me dancing on several events all over Europe",
			total_likes: 180
			)

		r_p2 = r.projects.create!(
			name: "Classes",
			company: "Dance academies around Barcelona and Spain",
			description: "Pictures and ",
			total_likes: 47
			)

		[r_p1, r_p2]
	end

	def self.create_patinyo_media(projects)
		# https://www.facebook.com/sergio.patino.378

		# Project 1
		projects[0].media.create!(
			link: "https://scontent-mad.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/1377368_10202087893980220_1502817258_n.jpg?oh=5e675e8a7c84f18e0135ed0d1d301c59&oe=5580083A",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://www.youtube.com/watch?v=OOi-677t-P4",
			mediatype: "video"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-frc3/v/t1.0-9/249125_10200992831484342_175533662_n.jpg?oh=65bdd817473c97e556614e8805ca08d6&oe=557B6535&__gda__=1435389770_7ac3b99d86af999661c1a07329d1adf8",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://www.youtube.com/watch?v=Lvz4TWcLnTs",
			mediatype: "video"
			)

		#Project 2
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=eSkldb0Mwc0",
			mediatype: "video"
			)
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=a6xwL3SXv8U",
			mediatype: "video"
			)
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=9ddZ8eGwKUU",
			mediatype: "video"
			)
		projects[1].media.create!(
			link: "https://fragmentsdevida.files.wordpress.com/2014/05/2014-05-idance-49-fotografc3ada-de-blanca-c3a1lvarez.jpg",
			mediatype: "photo"
			)
	end

	def self.create_ruth_media(projects)
		# https://www.facebook.com/ruth.prim

		# Project 1 (Battling and dancing)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-prn2/v/t1.0-9/563695_4508870794315_466505956_n.jpg?oh=51d295e1dc453e964a7908031ed8e391&oe=5581A91C&__gda__=1430928178_b22096dc693221d4a4cabd03a306b107",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://www.youtube.com/watch?v=-Te0AdIlsJg",
			mediatype: "video"
			)
		projects[0].media.create!(
			link: "https://www.youtube.com/watch?v=W9jCpOM1hKE",
			mediatype: "video"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/215305_10200383134035402_2086112096_n.jpg?oh=5d2203286224b8cabb33a4e1a94e1cea&oe=557BA172&__gda__=1435018489_3688ddeee5e456f301d44fa28aac6a8b",
			mediatype: "photo"
			)

		#Project 2 (Teaching)
		projects[1].media.create!(
			link: "https://scontent-mad.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10593136_10203372549088910_7000784771647284351_n.jpg?oh=c2681a1f9526778d2e6028cf5ed8802b&oe=5584A7A3",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=hmlduPsk1C4",
			mediatype: "video"
			)
		projects[1].media.create!(
			link: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/1896757_10202295619926354_207798501_n.jpg?oh=b50ec27f39463579321a07811925b57d&oe=557B24ED&__gda__=1430890928_c6c3daa772a19c7d83f01be5c0ea2bba",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=QON2tfhbvtM",
			mediatype: "video"
			)
	end
end