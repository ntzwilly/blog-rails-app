# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

(1..5).each do |i|
	user = User.create(name: "User #{i}", bio: "Lorem Ipsum Dolor Amet,...")
	 (1..3).each do |j|
		post = Post.create(title: "Amazing things to try right now ##{j}", text: "Lorem Ipsum Dolor Amet", user: user)
		(1..5).each do |j|
			Comment.create(text: "Comment #{j}", post: post, user: user)
		end
	end
end

  