puts 'Cleaning database...'
Post.destroy_all
User.destroy_all


puts 'Creating users...'
user1 = User.create!(email: "aubry.prieur@gmail.com", password: "azerty", password_confirmation: "azerty", first_name: "Aubry", last_name: "Prieur")

puts 'Creating posts...'
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: user1)
end
puts "100 Posts have been created"
