require 'test_helper'

class BackchannelTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Backchannel.new.valid?
  end
end
