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

class Item < ApplicationRecord
    has_many :biddingtables
    belongs_to :adminprofile
    
end
