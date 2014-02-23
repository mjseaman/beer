require File.dirname(__FILE__) + '/../spec_helper'

describe Item do
  it "should be valid" do
    Item.new.should be_valid
  end
end
