require 'spec_helper'

describe Post do
  before(:each) do
   @user = Factory.create(:user)
  end

  it "should create a new instance given valid attributes" do
    post = Factory.build(:post,:user_id => @user.id)
    post.should be_valid
  end
  
  it "should not create a new post without an user" do
    post = Factory.build(:post)
    post.should_not be_valid
  end
  
  it "should not create a new post without a title" do
      post = Factory.build(:post, :user_id => @user.id, :title => nil)
      post.should_not be_valid
  end
  
  it "should not create a new post without a very short title" do
    post = Factory.build(:post, :user_id => @user.id, :title => "hi")
    post.should_not be_valid
  end
  
  it "should not create a new post without any content" do
    post = Factory.build(:post, :user_id => @user.id, :body => nil)
    post.should_not be_valid
  end
  
  it "should not create a post with a very short content" do
    post = Factory.build(:post, :user_id => @user.id, :body => "ciao")
    post.should_not be_valid
  end
end
