FactoryGirl.define do
  factory :post do
    date Date.today
    rationale 'Amazing content'
    overtime_request 3.5
    user
  end

  factory :second_post, class: 'Post' do
    date Date.today
    rationale 'Amazing content 2'
    overtime_request 0.5
    user
  end
  
  # factory :post_from_other_user, class: "Post" do
  #   date Date.today
  #   rationale 'Amazing content 3'
  #   overtime_request: 2.5
  #   non_authorized_user
  # end
end
