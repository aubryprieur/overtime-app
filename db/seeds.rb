puts 'Cleaning database...'
AuditLog.destroy_all
Post.destroy_all
User.destroy_all
AdminUser.destroy_all

puts 'Creating users...'
@user = User.create!(
  email: "aubry.prieur@gmail.com",
  password: "azerty",
  password_confirmation: "azerty",
  first_name: "Aubry",
  last_name: "Prieur",
  phone: "2034576547")

puts 'Creating admin users...'
admin_user1 = AdminUser.create!(
  email: "admin@user.com",
  password: "azerty",
  password_confirmation: "azerty",
  first_name: "Admin",
  last_name: "User",
  phone: "2034576547")

puts 'Creating posts...'
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: @user, overtime_request: 2.5)
end
puts "100 Posts have been created"

puts 'Creating audit logs...'
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))
puts "3 audit logs have been created"
