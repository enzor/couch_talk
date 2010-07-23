require 'spec_helper'

describe User do

  it "should create a new instance given valid attributes" do
    Factory.build(:user).should be_valid
  end
  
  it "should not create a new user without any data at all" do
    user = Factory.build(:user,:login => nil,:password => nil ,:email => nil)
    user.should_not be_valid
  end
  
  it "should not create a new user without login" do
    user = Factory.build(:user,:login => nil)
    user.should_not be_valid
  end
  
  it "should not create a new user without password" do
    user = Factory.build(:user,:password => nil)
    user.should_not be_valid
  end
  
  it "should not create a new user without email" do
    user = Factory.build(:user,:email => nil)
    user.should_not be_valid
  end
end
