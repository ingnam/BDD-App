require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "has a valid factory" do
  	FactoryGirl.create(:contact).should be_valid
  end

  # First, FactoryGirl.build instantiates a new model
  # Second, we use the Contact factory’s defaults for 
  # every attribute except :firstname, and for that we pass nil to give it no value. 
  it "is invalid without a firstname" do
  	FactoryGirl.build(:contact, first_name: nil).should_not be_valid
  end

  it "is invalid without a lastname" do 
  	FactoryGirl.build(:contact, last_name: nil).should_not be_valid
  end

	# Testing instance methods 
  it "returns a contact's full name as a string" do
  	contact = FactoryGirl.create(:contact, first_name: "Madan", last_name: "Ingnam")
  	contact.name.should == "Madan Ingnam"
  end
end
