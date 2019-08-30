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

require 'test_helper'

class BidderprofileTest < ActiveSupport::TestCase

  test "First name should be empty" do
    one = bidderprofiles(:one)
    one.first_name = "" 
    assert_not one.valid?
  end
  
  test "First name should be too big" do
    one = bidderprofiles(:one)
    one.first_name = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end  

   test "Last name should be empty" do
    one = bidderprofiles(:one)
    one.last_name = "" 
    assert_not one.valid?
  end

  test "Last name should be too big" do
    one = bidderprofiles(:one)
    one.last_name = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "First name should be valid" do
    one = bidderprofiles(:one)
    one.first_name = "m" 
    assert one.valid?
  end

  test "Last name should be valid" do
    one = bidderprofiles(:one)
    one.last_name = "s" 
    assert one.valid?
  end   

  test "Year of date of birth should be invalid" do
    one = bidderprofiles(:one)
    one.date_of_birth = "0252-12-12" 
    assert_not one.valid?
  end

  test "Month of date of birth should be invalid" do
    one = bidderprofiles(:one)
    one.date_of_birth = "1252-15-12" 
    assert_not one.valid?
  end

  test "Day of date of birth should be invalid" do
    one = bidderprofiles(:one)
    one.date_of_birth = "1252-12-59" 
    assert_not one.valid?
  end

  test "Date of birth should be valid" do
    one = bidderprofiles(:one)
    one.date_of_birth = "1252-12-12" 
    assert one.valid?
  end

  test "Address name should be empty" do
    one = bidderprofiles(:one)
    one.address = "" 
    assert_not one.valid?
  end
  
  test "Address should be too big" do
    one = bidderprofiles(:one)
    one.address = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "Address should be valid" do
    one = bidderprofiles(:one)
    one.address = "Patterson" 
    assert one.valid?
  end

  test "City should be empty" do
    one = bidderprofiles(:one)
    one.city = "" 
    assert_not one.valid?
  end
  
  test "City should be too big" do
    one = bidderprofiles(:one)
    one.city = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "City should be valid" do
    one = bidderprofiles(:one)
    one.city = "Patterson" 
    assert one.valid?
  end

  test "State should be too big" do
    one = bidderprofiles(:one)
    one.state = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "State should be valid" do
    one = bidderprofiles(:one)
    one.state = "TN" 
    assert one.valid?
  end

  test "Zip code should be empty" do
    one = bidderprofiles(:one)
    one.zipcode = 
    assert_not one.valid?
  end

  test "Zip code should be float" do
    one = bidderprofiles(:one)
    one.zipcode = 450.36 
    assert_not one.valid?
  end   

  test "Zip code should be string" do
    one = bidderprofiles(:one)
    one.zipcode = "TN"
    assert_not one.valid?
  end

  test "Zip code should be valid" do
    one = bidderprofiles(:one)
    one.zipcode = 1234
    assert one.valid?
  end

  test "Country should be empty" do
    one = bidderprofiles(:one)
    one.country = "" 
    assert_not one.valid?
  end
  
  test "Country should be too big" do
    one = bidderprofiles(:one)
    one.country = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "Country should be valid" do
    one = bidderprofiles(:one)
    one.country = "BD" 
    assert one.valid?
  end

  test "Phone should be float" do
    one = bidderprofiles(:one)
    one.phone = 450.36 
    assert_not one.valid?
  end   

  test "Phone should be string" do
    one = bidderprofiles(:one)
    one.phone = "TN"
    assert_not one.valid?
  end

  test "Phone should be valid" do
    one = bidderprofiles(:one)
    one.phone = 1234
    assert one.valid?
  end

  test "Username should be empty" do
    one = bidderprofiles(:one)
    one.username = "" 
    assert_not one.valid?
  end
  
  test "Username should be too big" do
    one = bidderprofiles(:one)
    one.username = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "Username should be valid" do
    one = bidderprofiles(:one)
    one.username = "Rock" 
    assert one.valid?
  end

  test "Password should be empty" do
    one = bidderprofiles(:one)
    one.password = "" 
    assert_not one.valid?
  end
  
  test "Password should be too big" do
    one = bidderprofiles(:one)
    one.password = "AAAADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD" 
    assert_not one.valid?
  end

  test "Password should be valid" do
    one = bidderprofiles(:one)
    one.password = "Rock" 
    assert one.valid?
  end  

  test "Email should be valid" do
    one = bidderprofiles(:one)
    one.email = "example@example.com.bd"
    assert one.valid?
  end

  test "Invalid: email not present" do
    one = bidderprofiles(:one)
    one.email = nil
    assert_not one.valid?
  end

  test "Invalid email format" do
    one = bidderprofiles(:one)
    one.email = "example@example"
    assert_not one.valid?
  end

  test "Invalid email format, @ should be there" do
    one = bidderprofiles(:one)
    one.email = "example.com"
    assert_not one.valid?
  end  

end
