require 'spec_helper'

describe Person do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :surname => "value for surname",
      :date_of_birth => Date.today
    }
  end

  it "should create a new instance given valid attributes" do
    Person.create!(@valid_attributes)
  end
end
