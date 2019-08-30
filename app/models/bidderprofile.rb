# == Schema Information
#
# Table name: bidderprofiles
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

class Bidderprofile < ApplicationRecord
    has_secure_password
    has_many :biddingtables
    
    validates :first_name, presence: true, length: { maximum: 40 }
    validates :last_name, presence: true, length: { maximum: 40 }
    validates :date_of_birth, allow_blank: true, format: { with: /(^[12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/, message: "Only yyyy-mm-dd is allowed!" }
    validates :address, presence: true, length: { maximum: 40 }
    validates :city, presence: true, length: { maximum: 40 }
    validates :state, allow_blank: true, length: { maximum: 40 }
    validates :zipcode, presence: true, numericality: { only_integer: true }
    validates :country, presence: true, length: { maximum: 40 }
    validates :phone, allow_blank: true, numericality: { only_integer: true }
    validates :email, presence: true, format: {with: /\A[a-zA-Z0-9_.+\-]+@[a-zA-Z0-9_.+\-]+\.[a-zA-Z0-9\-.]*[a-zA-Z0-9]\z/}
    validates :username, presence: true, uniqueness: true, length: { maximum: 40 }
    validates :password, presence: true, length: { maximum: 40 }    
end
