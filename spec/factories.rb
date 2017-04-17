FactoryGirl.define do
  factory :project do
    name "Project Runway"
    due_date Date.parse("2017-5-20")
  end

  factory :user do
    email "user@user.com"
    password "password"
  end
end
