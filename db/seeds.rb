puts 'Cleaning database...'
Post.destroy_all
User.destroy_all
AdminUser.destroy_all

puts 'Creating users...'
user1 = User.create!(email: "aubry.prieur@gmail.com", password: "azerty", password_confirmation: "azerty", first_name: "Aubry", last_name: "Prieur")

puts 'Creating admin users...'
admin_user1 = AdminUser.create!(email: "admin@user.com", password: "azerty", password_confirmation: "azerty", first_name: "Admin", last_name: "User")

puts 'Creating posts...'
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: user1, overtime_request: 2.5)
end
puts "100 Posts have been created"
