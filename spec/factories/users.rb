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
  end

  factory :admin_user, class: "AdminUser" do
    first_name { "Admin" }
    last_name  { "User" }
    email { generate :email }
    password { "somepassword" }
    password_confirmation { "somepassword"}
  end

  factory :non_authorized_user, class: "User" do
    first_name { "Non" }
    last_name  { "Authorized" }
    email { generate :email }
    password { "azerty" }
    password_confirmation { "azerty"}
  end
end
