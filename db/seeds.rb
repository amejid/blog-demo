# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  email: "mail@mail.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Amejid",
  role: User.roles[:admin]
)

User.create(
  email: "test@mail.com",
  password: "123456",
  password_confirmation: "123456",
  name: "John"
)

10.times do |x|
  post = Post.create(
    title: "Post #{x}",
    body: "Body #{x} words go here Idk what to write",
    user_id: User.first.id
  )

  5.times do |y|
    Comment.create(
      body: "Comment #{y}",
      user_id: User.second.id,
      post_id: post.id
    )
  end
end