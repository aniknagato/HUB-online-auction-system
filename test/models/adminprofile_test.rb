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

require 'test_helper'

class AdminprofileTest < ActiveSupport::TestCase
  
# Begin Test first_name
test "first_name should not be empty string" do
  one = adminprofiles(:one)
  one.first_name = ''
  assert_not one.valid?
end

test "first_name should be within 20 characters" do
  one = adminprofiles(:one)
  one.first_name = 'Mundavi iMundaviee Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi'
  assert_not one.valid?
end

# End Test first_name

# Begin Test last_name

test "last_name should not be empty string" do
  one = adminprofiles(:one)
  one.last_name = ''
  assert_not one.valid?
end

test "last_name should be within 20 characters" do
  one = adminprofiles(:one)
  one.last_name = 'Mundavi iMundaviee Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi'
  assert_not one.valid?
end

# End Test last_name

# Begin Test date_of_birth

test "Date of birth is allowed to be blank" do
  one = adminprofiles(:one)
  one.date_of_birth = nil
  assert one.date_of_birth.blank?
end

test "Year of date of birth should be valid" do
      one = adminprofiles(:one)
      one.date_of_birth = "0100-06-06" 
      assert_not one.valid?
end
  
test "Month of date of birth should be valid" do
      one = adminprofiles(:one)
      one.date_of_birth = "1990-13-08" 
      assert_not one.valid?
end
  
test "Day of date of birth should be valid" do
      one = adminprofiles(:one)
      one.date_of_birth = "1990-12-32" 
      assert_not one.valid?
end
  
# End Test date_of_birth

# Begin of Test address
test "Address should not be empty string" do
      one = adminprofiles(:one)
      one.address = "" 
      assert_not one.valid?
end
    
test "Address should be within 30 characters" do
      one = adminprofiles(:one)
      one.address = "SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS" 
      assert_not one.valid?
end
# End of Test address

# Begin of Test city
test "City should not be empty string" do
  one = adminprofiles(:one)
  one.city = "" 
  assert_not one.valid?
end

test "City should be within 20 characters" do
  one = adminprofiles(:one)
  one.city = "SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS" 
  assert_not one.valid?
end
# End of Test city

# Begin of Test state
test "state is allowed to be blank" do
  one = adminprofiles(:one)
  one.state = nil
  assert one.state.blank?
end

test "state should be within 20 characters" do
  one = adminprofiles(:one)
  one.state = "SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS" 
  assert_not one.valid?
end
# End of Test state

# Begin of Test Zip
test "Zip code should not be empty string" do
  one = adminprofiles(:one)
  one.zipcode = ''
  assert_not one.valid?
end
  
test "Zip code should be float" do
  one = adminprofiles(:one)
  one.zipcode = 1000.10 
  assert_not one.valid?
end   
  
test "Zip code should be string" do
  one = adminprofiles(:one)
  one.zipcode = "ssssssss"
  assert_not one.valid?
end
# End of Test Zip

# Begin of Test Country
test "Country should not be empty string" do
  one = adminprofiles(:one)
  one.country = '' 
  assert_not one.valid?
end
    
test "Country should be within 40 characters" do
  one = adminprofiles(:one)
  one.country = "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn" 
  assert_not one.valid?
end
  
# End of Test Country

# Begin of Test phone
test "phone should not be empty string" do
  one = adminprofiles(:one)
  one.phone = '' 
  assert_not one.valid?
end

test "Phone should not be float" do
  one = adminprofiles(:one)
  one.phone = 100.00 
  assert_not one.valid?
end   
  
test "Phone should not be string" do
  one = adminprofiles(:one)
  one.phone = "aaaaaaaaaa"
  assert_not one.valid?
end
# End of Test phone

# Begin Test email
test "email should not be empty string" do
  one = adminprofiles(:one)
  one.email = ''
  assert_not one.valid?
end

test "email format should be valid" do
  one = bidderprofiles(:one)
  one.email = "abcgvr"
  assert_not one.valid?
end  
# End Test email

# Begin Test username

test "username should not be empty string" do
  one = adminprofiles(:one)
  one.username = ''
  assert_not one.valid?
end

test "username should be within 20 characters" do
  one = adminprofiles(:one)
  one.username = 'Mundavi iMundaviee Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi'
  assert_not one.valid?
end

test "username must be unique" do
  one = adminprofiles(:one)
  one_dup = one.dup
  one.save
  assert_not one_dup.valid?
end

# End Test username

# Begin Test password

test "password should not be empty string" do
  one = adminprofiles(:one)
  one.password = ''
  assert_not one.valid?
end

test "password should be within 30 characters" do
  one = adminprofiles(:one)
  one.password = 'Mundavi iMundaviee Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi Mundavi'
  assert_not one.valid?
end

# End Test password
end
