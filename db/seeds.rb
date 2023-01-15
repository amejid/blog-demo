# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Amejid", email: "mail@mail.com", password: "123456", password_confirmation: "123456")
User.create(name: "John", email: "test@mail.com", password: "123456", password_confirmation: "123456")

10.times do |x|
  Post.create(title: "Title #{x}", body: "Body #{x} words go here", user_id: User.first.id)
end