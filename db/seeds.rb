# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
	@user = User.create(username: Faker::Name.name, password: "password"),
	@user.kitties = Kitty.create(link: Faker::Name.name, description: Faker::Name.name, user_id: @user.id),
	@user.kitties = Kitty.create(link: Faker::Name.name, description: Faker::Name.name, user_id: @user.id)
end