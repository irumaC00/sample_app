FactoryGirl.define do
	factory :user do
		name                  "Iruma Shibuya"
		email                 "programiruma@gmail.com"
		password              "foobar"
		password_confirmation "foobar"
	end
end