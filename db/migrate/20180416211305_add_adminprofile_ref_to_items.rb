class AddAdminprofileRefToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :adminprofile, foreign_key: true
  end
end
