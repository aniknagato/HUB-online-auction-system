class ChangePasswordToPasswordDigest < ActiveRecord::Migration[5.1]
  def change
    rename_column :bidderprofiles, :password, :password_digest   
  end
end
