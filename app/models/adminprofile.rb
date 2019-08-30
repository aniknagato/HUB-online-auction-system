# == Schema Information
#
# Table name: adminprofiles
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  date_of_birth   :string
#  address         :string
#  city            :string
#  state           :string
#  zipcode         :integer
#  country         :string
#  phone           :integer
#  email           :string
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Adminprofile < ApplicationRecord
    
    has_secure_password
    has_many :items
    
    validates :first_name, length: {maximum: 20}, presence: true
    validates :last_name , length: {maximum: 20}, presence: true
    validates :date_of_birth, format: { with: /(^[12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/, message: "Only yyyy-mm-dd is allowed!" }, allow_blank: true
    validates :address, length: { maximum: 30 }, presence: true
    validates :city, length: { maximum: 20 }, presence: true
    validates :state, length: { maximum: 20 }, allow_blank: true
    validates :zipcode, numericality: { only_integer: true }, presence: true
    validates :country, length: { maximum: 40 }, presence: true
    validates :phone, presence: true
    #validates :phone, format: {with: /\d{3}-\d{3}-\d{4}/, message: "Only 000-000-0000 format is allowed"}, presence: true
    validates :email, presence: true, format: {with: /\A[a-zA-Z0-9_.+\-]+@[a-zA-Z0-9_.+\-]+\.[a-zA-Z0-9\-.]*[a-zA-Z0-9]\z/}
    validates :username , length: { maximum: 20 }, uniqueness: true, presence: true
    validates :password, length: { maximum: 30 }, presence: true 


end
