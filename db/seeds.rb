require 'faker'
require 'populator'

User.destroy_all

10.times do
	user = User.new
	user.username = Faker::Internet.user_name
	user.email = Faker::Internet.email
	user.password = "test"
	user.password_confirmation = "test"
	user.save
end

User.all.each do |user|
	Tweet.populate(5..10) do |tweet|
		tweet.user_id = user.id
		tweet.message = Faker::Lorem.sentence
	end

	# Add Friends
	3.times do
		user.add_friend(User.all[rand(User.count)])
	end
end

