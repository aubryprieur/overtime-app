FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user, class: User do
    first_name { "Jon" }
    last_name  { "Snow" }
    email { generate :email }
    password { "somepassword" }
    password_confirmation { "somepassword"}
    phone {"5555555555"}
    ssn { 1234 }
    company { "ABC Company" }
  end

  factory :admin_user, class: "AdminUser" do
    first_name { "Admin" }
    last_name  { "User" }
    email { generate :email }
    password { "somepassword" }
    password_confirmation { "somepassword"}
    phone {"5555555555"}
    ssn { 1234 }
    company { "ABC Company" }
  end

  factory :non_authorized_user, class: "User" do
    first_name { "Non" }
    last_name  { "Authorized" }
    email { generate :email }
    password { "azerty" }
    password_confirmation { "azerty"}
    phone {"5555555555"}
    ssn { 1234 }
    company { "ABC Company" }
  end
end
