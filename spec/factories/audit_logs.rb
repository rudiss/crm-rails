FactoryGirl.define do
  factory :audit_log do
    user 
    status 0
    start_date (Date.today - 6.days)
    end_date "2017-02-22"
  end
end
