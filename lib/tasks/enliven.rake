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
			Creation.create_grazy_media(Creation.create_grazy())
			Creation.create_wild_card_user()
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
			email: "patiño@enliven.com",
			born: Faker::Date.between(22.years.ago, 20.years.ago),
			styles: "Bboying (breakdance) basicly, but I know the basics of most of HipHop styles",
			summary: Faker::Lorem.paragraph(1),
			# profile_picture: open("https://s3.amazonaws.com/uifaces/faces/twitter/alexmarin/128.jpg"),
			profile_picture: open("https://scontent-mxp.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/10501890_10204059017257070_1701768582731525652_n.jpg?oh=bb591f1933c35ae8e6643d1b58050ddd&oe=558FC030"),

			nationality: "Barcelona, SPAIN",
			ethnicity: "Spanish",
			languages: "Spanish and catalan",
			
			height: Faker::Number.number(2),
			chest: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			waist: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			hips: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
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
			email: "ruth@enliven.com",
			born: Faker::Date.between(22.years.ago, 20.years.ago),
			styles: "HipHop, HipHop Freestyle, Newstyle, HouseDance",
			summary: Faker::Lorem.paragraph(1),
			profile_picture: open("https://s3.amazonaws.com/uifaces/faces/twitter/jkhorshidi/128.jpg"),

			nationality: "Barcelona, SPAIN",
			ethnicity: "Latin - Spanish",
			languages: "Spanish, catalan and English",
			
			height: Faker::Number.number(2),
			chest: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			waist: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			hips: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
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

	def self.create_grazy()
		g = User.create!(
			username: "Grazy",
			password: "1234",
			fullname: "Graciel Stenio",
			email: "grazy@enliven.com",
			born: Faker::Date.between(28.years.ago, 25.years.ago),
			styles: "Bboying, contemporary and basics of most of latin dances",
			summary: Faker::Lorem.paragraph(1),
			profile_picture: open("https://scontent-mxp.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10345985_870429199641668_5083831949640086130_n.jpg?oh=69e89dcb685323e2a76d6e34af705be4&oe=557D0A66"),

			nationality: "Madrid, SPAIN",
			ethnicity: "Spanish",
			languages: "Spanish and english",
			
			height: Faker::Number.number(2),
			chest: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			waist: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			hips: ((Faker::Number.number(2)).to_s + "." + (Faker::Number.number(2)).to_s).to_f,
			suit: "M",
			shirt: "L",
			pants: "42",
			shoes: 41,
			eyes: "Dark brown",
			hair: "Short, curly, black",

			actingexp: Faker::Lorem.paragraph(2),
			battleexp: Faker::Lorem.paragraph(1),
			adsexp: Faker::Lorem.paragraph(3),
			teachingexp: Faker::Lorem.paragraph(2),
			)

		g_p1 = g.projects.create!(
			name: "Panorama Show, Space Tour 2014",
			company: "Panorama Orchestra",
			description: "This is a recopilatory of photos of me performing in the showcase. There I'm dancing but also doing percussion as well as acting.",
			total_likes: 225
			)


		g_p2 = g.projects.create!(
			name: "O MARISQUIÑO 2014",
			company: "Bboying contest",
			description: "Photo shots when competing in the jam",
			total_likes: 135
			)

		[g_p1, g_p2]
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
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-prn2/v/t1.0-9/1378264_10202122869814594_1342202539_n.jpg?oh=06dcc7fe9f024737d0cdccfe9653c5bc&oe=5577F248&__gda__=1435897470_e92708d4a67127bdb47abafbeae03a5b",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-frc3/v/t1.0-9/260502_10200992828404265_1826411648_n.jpg?oh=7e3cc144d2a98b230ca5ad8448f76117&oe=557B6BA8&__gda__=1430891493_f796a85f48b17963dfa71b7fc823bb58",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/225587_10200568947047496_113907818_n.jpg?oh=85fa52fcd6bef62ab72a7263032be379&oe=55801408&__gda__=1433828315_5f208ea2c7051418aadbc3414409ca6f",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/311036_2587004995756_1266612164_n.jpg?oh=342431d10a7a05f764f656c4fc1c3729&oe=55777EAE&__gda__=1435232103_48759f7b3033518e7911978844c39383",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/312498_2399410986023_1201431865_n.jpg?oh=d366d0615973d180ddc7fc4414b0eb21&oe=5594683D&__gda__=1434355802_681c6c6db8c8859fac396e45c3808b62",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/301597_2388115703648_346565840_n.jpg?oh=d6e491768dc9c12d972dd3ab36fc2730&oe=557E559C&__gda__=1434675796_70d0160d88237d2b9ba844d7f8582a2a",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://scontent-mad.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/293909_2382074072611_1351102353_n.jpg?oh=721a777ae186a1b522dda5b6d97b80e8&oe=5585334D",
			mediatype: "photo"
			)

		#Project 2
		projects[1].media.create!(
			link: "https://fragmentsdevida.files.wordpress.com/2014/05/2014-05-idance-49-fotografc3ada-de-blanca-c3a1lvarez.jpg",
			mediatype: "photo"
			)
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

	def self.create_grazy_media(projects)

		# Project 1 (Panorama show)
		projects[0].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10487357_869862913031630_2890048455708534329_n.jpg?oh=702e02877c4f18c40e71f8f7601866e6&oe=5591E209",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://www.youtube.com/watch?v=dAd77TRbusY",
			mediatype: "video"
			)
		projects[0].media.create!(
			link: "https://www.youtube.com/watch?v=eNs2ghkGSh8",
			mediatype: "video"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/10703695_853830844634837_6695113612696824658_n.jpg?oh=8d025592c42a8cd01ef667afd0dabee3&oe=5590E500&__gda__=1433650794_2cafb2db1574007ed233bcfefedff7da",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/1927921_823904850960770_3851222671244718586_n.jpg?oh=fd8742156342829b7c29ae9ee3f826a8&oe=55769A27&__gda__=1434235580_d77b446ce492e60c6d99587b4970bde7",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/1939686_756525861032003_1329580791_n.jpg?oh=a2dbb345253cb783b7e2e5dd52619d16&oe=557194DD",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10001327_751848684833054_243211514_n.jpg?oh=7dff0b9d27c99ea4541e24fc9764690f&oe=55963743",
			mediatype: "photo"
			)
		projects[0].media.create!(
			link: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/10014599_751847091499880_2104854427_n.jpg?oh=cee27bb53b5a0b65b940a4b465705de7&oe=557F32E4&__gda__=1435347390_c931d67d5e0cb6d9468f485e2869b682",
			mediatype: "photo"
			)
		

		# Project 2 (O Marisquiño)
		projects[1].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10492197_870427416308513_2768584216085066941_n.jpg?oh=7a1ac3ed2762594d3175af1906f648af&oe=557A1CE4",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/10300967_870427909641797_4063552391538511248_n.jpg?oh=5110004aef819331f4690cda0585d3d4&oe=558CB869&__gda__=1435499267_7bd67ea47f4a37a34150bca3bed741a7",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1688703_870425406308714_7228701268959077015_n.jpg?oh=f74ff4bf2ce332931bece75a1ccfeac5&oe=55720F66&__gda__=1434597935_10b7f705523caef74003e38ebabbc679",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/10704067_870426442975277_6915424174177954695_n.jpg?oh=80ebca8176fefc49655137382727341e&oe=5588A430",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/1959231_870426549641933_7303602333165094817_n.jpg?oh=44b41b9d22eef00461791f778b9691e3&oe=558B32EB&__gda__=1433499504_a3a9f5da8ab6a9d230634ed1ad948b0f",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=FO72Zl69EiU",
			mediatype: "video"
			)
		projects[1].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/1014426_870426916308563_3117023693009669487_n.jpg?oh=8451adf2f2311b7c8178bbb7f446e241&oe=558B7E31",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://www.youtube.com/watch?v=fNXcTw0uAk4",
			mediatype: "video"
			)
		projects[1].media.create!(
			link: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/10696223_870427099641878_4344704354215966462_n.jpg?oh=3e6f6bde3f9d1a4bb5fe0b98b7ded38e&oe=557C4C35&__gda__=1433849603_b2298e0088c5040c3b894f3949172604",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/1654061_870427276308527_8336146767777146418_n.jpg?oh=feb649307f49fdc38384fe8817bd7b2c&oe=5589DE10",
			mediatype: "photo"
			)
		projects[1].media.create!(
			link: "https://scontent-mxp.xx.fbcdn.net/hphotos-xpa1/v/l/t1.0-9/10646716_870427326308522_8200724341669694704_n.jpg?oh=93b3dfde4e87c9546483d9d75fe2604f&oe=5574B0E2",
			mediatype: "photo"
			)
	end

	def self.create_wild_card_user()
		# Wildcarduser creation
		# Check first if it's created!!
		admin = User.find_by email: "admin@enliven.com"

		if admin.nil?	
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
		end
	end
end