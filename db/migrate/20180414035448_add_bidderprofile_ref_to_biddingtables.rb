class AddBidderprofileRefToBiddingtables < ActiveRecord::Migration[5.1]
  def change
    add_reference :biddingtables, :bidderprofile, foreign_key: true
  end
end
