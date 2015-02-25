# This will guess the User class
FactoryGirl.define do
  factory :user do
    email "example@digital.justice.gov.uk"
  end

  factory :post do
    association :poster, factory: :user
    headline "walk at the park"
    detail "lets go at the park for walk during lunch time"
  end
end
