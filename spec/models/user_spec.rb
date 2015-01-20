require 'spec_helper'

describe User do
  it { should have_many(:mentoring_appointments) }
  it { should have_many(:menteeing_appointments) }
  it { should have_many(:availabilities) }
  it { should have_many(:received_kudos) }
  it { should have_many(:given_kudos) }

  it "should show kudos in pretty_name" do
    ryan = User.new(:first_name => "Ryan", :total_kudos => 42)
    ryan.pretty_name.should == "Ryan - 42"
  end

  describe "has methods" do
    let(:user){User.new(:first_name => "Ryan", :bio => "YOLO", :interests => "")}

    it "should return true if user has bio" do
      expect(user.has_bio).to be true
    end

    it "should return true if user has bio" do
      expect(user.has_bio).to be true
    end

    it "should return true if user has no availabilities" do
      expect(user.has_no_availabilities).to be true
    end
  end
end
