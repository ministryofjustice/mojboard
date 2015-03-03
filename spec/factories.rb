# This will guess the User class
FactoryGirl.define do  factory :event do
    name "MyString"
description "MyString"
details "MyText"
organiser_id 1
start_time "2015-03-03 12:30:06"
end_time "2015-03-03 12:30:06"
start_date "2015-03-03"
end_date "2015-03-03"
  end
  

  factory :comment do
    comment_input ""
    post_id ""
    user_id 1
  end

  factory :user do
    email "example@digital.justice.gov.uk"
  end

  factory :post do
    association :poster, factory: :user
    headline "walk at the park"
    detail "lets go at the park for walk during lunch time"
  end
end
