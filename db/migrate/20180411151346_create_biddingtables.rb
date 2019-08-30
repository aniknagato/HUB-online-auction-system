class CreateBiddingtables < ActiveRecord::Migration[5.1]
  def change
    create_table :biddingtables do |t|
      t.float :bidding_price

      t.timestamps
    end
  end
end
