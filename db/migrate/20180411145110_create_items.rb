class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.float :original_price
      t.string :auction_price
      t.string :image_source

      t.timestamps
    end
  end
end
