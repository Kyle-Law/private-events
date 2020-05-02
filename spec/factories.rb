FactoryGirl.define do
  factory :registration do
    event nil
    user nil
  end
  factory :event do
    title "MyString"
    description "MyText"
    data "MyString"
    user nil
  end
  factory :user do
    username "MyString"
    event nil
  end
    
end