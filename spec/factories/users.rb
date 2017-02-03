FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email  { generate :email }
    password "123321"
    password_confirmation "123321"
    first_name "John"
    last_name "Snow"
  end

  factory :admin_user, class: 'AdminUser' do
    email  { generate :email }
    password "123321"
    password_confirmation "123321"
    first_name "Jon"
    last_name "Snow"
  end
end
