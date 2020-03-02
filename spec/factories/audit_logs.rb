FactoryBot.define do
  factory :audit_log do
    user { nil }
    status { 1 }
    start_date { "2020-03-02" }
    end_date { "2020-03-02" }
  end
end
