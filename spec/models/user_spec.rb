require 'spec_helper'

describe User do

  before { @user = User.new(username: "test_user", email: "example@email.com") }

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:score) }

  it { should be_valid }

  describe "when email is not present" do
    before { @user.email = ""}
    it {should_not be_valid}
  end

  describe "when email is too long" do
    before { @user.email = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when email is too short" do
    before { @user.email = "a" }
    it { should_not be_valid }
  end

  describe "when email is already taken" do
    before do 
      user_clone = @user.dup
      user_clone.email = user_clone.email.upcase
      user_clone.save
    end
    it {should_not be_valid}
  end

  describe "should have a default score" do
    it { @user.score.should == 0 }
  end

  describe "default score should not overwrite sent value" do
    before { @other_user = User.new(username: "t", email: "example@test.com", score: 30) }

    it { @other_user.score.should == 30 }
  end
end
