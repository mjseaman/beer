require 'test_helper'

class SetTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Set.new.valid?
  end
end
