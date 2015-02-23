require 'faker'

FactoryGirl.define do
  factory :user do
  	username	{ Faker::Internet.user_name }
  	email		{ Faker::Internet.email }
  	born		{ Faker::Date.between(70.years.ago, 16.years.ago) }
  	# password	{ Faker::Internet.password(8) }
  	password	"12345678"
  end
end