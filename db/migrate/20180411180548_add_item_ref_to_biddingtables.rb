class AddItemRefToBiddingtables < ActiveRecord::Migration[5.1]
  def change
    add_reference :biddingtables, :item, foreign_key: true
  end
end
