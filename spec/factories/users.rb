require 'factory_girl'
require 'faker'

FactoryGirl.define do
	factory :user do
		username     {Faker::Name.name}
		password  "password"
	end
end