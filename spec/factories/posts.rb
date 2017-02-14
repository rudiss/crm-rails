FactoryGirl.define do
  factory :post do
    date Date.today
    rationale 'Amazing content'
    user
  end

  factory :second_post, class: 'Post' do
    date Date.today
    rationale 'Amazing content 2'
    user
  end
  
  factory :post_from_other_user, class: "Post" do
    date Date.today
    rationale 'Amazing content 3'
    non_authorized_user
  end
end
