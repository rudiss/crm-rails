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
    phone "12345678910"
  end

  factory :admin_user, class: 'AdminUser' do
    email  { generate :email }
    password "123321"
    password_confirmation "123321"
    first_name "Jon"
    last_name "Snow"
    phone "12345678910"
  end

  factory :non_authorized_user, class: 'User' do
    email  { generate :email }
    password "123321"
    password_confirmation "123321"
    first_name "Non"
    last_name "Authorize"
    phone "12345678910"
  end
end
