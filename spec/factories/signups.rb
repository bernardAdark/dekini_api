FactoryGirl.define do
  factory :signup do |f|
    f.email "megyewodi@gmail.com" 
  end

  factory :signup_inv do |f|
  	f.email "invalid"
  end
end
