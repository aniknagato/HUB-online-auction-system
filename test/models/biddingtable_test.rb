# == Schema Information
#
# Table name: biddingtables
#
#  id               :integer          not null, primary key
#  bidding_price    :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  item_id          :integer
#  bidderprofile_id :integer
#

require 'test_helper'

class BiddingtableTest < ActiveSupport::TestCase

  test "Bidding_price should be string" do
    one = biddingtables(:one)
    one.bidding_price = "asd" 
    assert_not one.valid?
  end

  test "Bidding_price should be valid" do
    one = biddingtables(:one)
    one.bidding_price = 12.5 
    assert one.valid?
  end

end
