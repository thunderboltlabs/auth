# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do
  sequence(:email) {|n| "user#{n}@example.com" }

  factory :user do
    email { generate :email }
  end
end
