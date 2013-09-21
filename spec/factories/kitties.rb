require 'factory_girl'
require 'faker'

FactoryGirl.define do
	factory :kitty do
		link     {Faker::Name.name}
		description  {Faker::Company.bs}
	end
end