class ChangepasswordTopasswordDigest < ActiveRecord::Migration[5.1]
  def change
    rename_column :adminprofiles, :password, :password_digest   
  end
end
