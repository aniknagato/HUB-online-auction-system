class AddDescriptionToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :description, :string
  end
end
