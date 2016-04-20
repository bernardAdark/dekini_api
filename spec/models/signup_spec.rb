require 'rails_helper'

RSpec.describe Signup, type: :model do
  describe Signup
  	let(:signup) {FactoryGirl.build(:signup)}
  	it "must be valid with valid input" do
  	 expect(signup.save).to be true
  	end
  describe "#email" do
  it "must return errors" do
   expect {FactoryGirl.build(:signup_inv)}.to raise_error 
  end
  end
end
