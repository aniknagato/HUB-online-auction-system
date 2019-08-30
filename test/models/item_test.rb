# == Schema Information
#
# Table name: items
#
#  id              :integer          not null, primary key
#  item_name       :string
#  original_price  :float
#  auction_price   :string
#  image_source    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  description     :string
#  adminprofile_id :integer
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
