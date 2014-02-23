require File.dirname(__FILE__) + '/../spec_helper'

describe ItemSet do
  it "should be valid" do
    ItemSet.new.should be_valid
  end
end
