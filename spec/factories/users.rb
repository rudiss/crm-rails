FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "123321"
    password_confirmation "123321"
    first_name "Jon"
    last_name "Snow"
  end

  factory :admin_user, class: 'AdminUser' do
    email "admin@test.com"
    password "123321"
    password_confirmation "123321"
    first_name "Jon"
    last_name "Snow"
  end
end
