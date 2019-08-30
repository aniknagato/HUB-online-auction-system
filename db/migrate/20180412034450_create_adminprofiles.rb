class CreateAdminprofiles < ActiveRecord::Migration[5.1]
  def change
    create_table :adminprofiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.integer :phone
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
