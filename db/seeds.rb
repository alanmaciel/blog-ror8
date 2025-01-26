# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.where(email_address: "alan@hola.com").first_or_initialize
user.update!(password: "123456", password_confirmation: "123456")

100.times do |i|
  post = Post.where(title: "Post #{i}").first_or_initialize
  post.update(body: "This is the body of post #{i}")
end
