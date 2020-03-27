puts 'Cleaning database...'
AuditLog.destroy_all
Post.destroy_all
Employee.destroy_all
User.destroy_all
AdminUser.destroy_all

puts 'Creating employees...'
@employee = Employee.create!(
  email: "aubry.prieur@gmail.com",
  password: "azerty",
  password_confirmation: "azerty",
  first_name: "Aubry",
  last_name: "Prieur",
  phone: "3645711571",
  ssn: 1234,
  company: "ABC Company")

puts 'Creating admin...'
admin_user1 = AdminUser.create!(
  email: "aubry.prieur@copas.coop",
  password: "azerty",
  password_confirmation: "azerty",
  first_name: "Admin",
  last_name: "User",
  phone: "2034576547",
  ssn: 1234,
  company: "ABC Company")

puts 'Creating audit logs...'
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))
puts "3 audit logs have been created"

puts 'Creating posts...'
5.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @employee.id, daily_hours: 12.5)
end
puts "5 Posts have been created"

