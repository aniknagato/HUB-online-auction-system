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

class Biddingtable < ApplicationRecord

    belongs_to :item
    belongs_to :bidderprofile, optional: true
    validates :bidding_price, numericality: true

end
