# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pin do
    name "MyString"
    user_name "MyString"
    age "MyString"
    city "MyString"
    state "MyString"
    bio "MyText"
    credits "MyText"
  end
end
