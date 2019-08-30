# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

car10 = Item.new(item_name: 'Toyota Camry', original_price: 10000.0, auction_price: '7000', description: 'Mileage: 123k year: 2007', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car11 = Item.new(item_name: 'Honda Accord', original_price: 9000.0, auction_price: '7000', description: 'Mileage: 120k year: 2004', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car12 = Item.new(item_name: 'Corolla', original_price: 8000.0, auction_price: '5000', description: 'Mileage: 190k year: 2001', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car13 = Item.new(item_name: 'Sonata', original_price: 8000.0, auction_price: '3400', description: 'Mileage: 80k year: 2002', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car14 = Item.new(item_name: 'Elantra', original_price: 7000.0, auction_price: '6000', description: 'Mileage: 20k year: 2007', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car15 = Item.new(item_name: 'Civic', original_price: 22000.0, auction_price: '12000', description: 'Mileage: 123k year: 2003', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car16 = Item.new(item_name: 'Honda CRV', original_price: 30000.0, auction_price: '25000', description: 'Mileage: 170k year: 2004', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car17 = Item.new(item_name: 'KIA', original_price: 6000.0, auction_price: '7000', description: 'Mileage: 167k year: 2005', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car18 = Item.new(item_name: 'Epic', original_price: 1000000.0, auction_price: '5000', description: 'Mileage: 188k year: 2007', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")

car20 = Item.new(item_name: 'Car', original_price: 12000.0, auction_price: '7000', description: 'this is a nice car', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")
car21 = Item.new(item_name: 'Sedan Car', original_price: 10000.0, auction_price: '2000', description: 'this is a goood sedan car', image_source: 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?cs=srgb&dl=car-vehicle-luxury-112460.jpg&fm=jpg', status: "active")

bid11 = Biddingtable.new(bidding_price: 500.0)
bid12 = Biddingtable.new(bidding_price: 1000.0)
bid13 = Biddingtable.new(bidding_price: 500.0)
bid14 = Biddingtable.new(bidding_price: 1000.0)
bid15 = Biddingtable.new(bidding_price: 4000.0)
bid16 = Biddingtable.new(bidding_price: 300.0)
bid17 = Biddingtable.new(bidding_price: 400.0)
bid18 = Biddingtable.new(bidding_price: 900.0)
bid19 = Biddingtable.new(bidding_price: 40.0)
bid111 = Biddingtable.new(bidding_price: 50.0)
bid122 = Biddingtable.new(bidding_price: 10.0)

bid11.item = car10
bid12.item = car11
bid13.item = car11
bid14.item = car11
bid15.item = car12
bid16.item =car12
bid17.item = car12
bid18.item =car12
bid19.item = car12
bid111.item = car13
bid122.item = car12


admin1 = Adminprofile.new(first_name: 'John', last_name: 'Specter', date_of_birth: '1990-12-12', address: '125 A street', city: 'memphis', state: 'TN', zipcode: 1125, country: 'usa', phone: 12354, email: 'zfr@gmail.com', username: 'john', password: 'masum123')
admin2 = Adminprofile.new(first_name: 'Rayen', last_name: 'Estes', date_of_birth: '1990-10-09', address: '125 A street', city: 'memphis', state: 'TN', zipcode: 1125, country: 'usa', phone: 12354, email: 'zfr@gmail.com', username: 'rayen', password: 'masum123')
admin3 = Adminprofile.new(first_name: 'Elli', last_name: 'Terrus', date_of_birth: '1980-12-08', address: '125 A street', city: 'memphis', state: 'TN', zipcode: 1125, country: 'usa', phone: 12354, email: 'zfr@gmail.com', username: 'elli', password: 'masum123')

car10.adminprofile = admin1
car11.adminprofile = admin1
car12.adminprofile = admin1
car13.adminprofile = admin2
car14.adminprofile = admin3
car15.adminprofile = admin2
car16.adminprofile = admin2
car17.adminprofile = admin2
car18.adminprofile = admin2
car20.adminprofile = admin3
car21.adminprofile = admin3



 


bidder1 = Bidderprofile.new(first_name: 'Bonna', last_name: 'ABC', date_of_birth: '1990-12-12', address: '125 A street', city: 'memphis', state: 'TN', zipcode: 1125, country: 'usa', phone: 12354, email: 'zfr@gmail.com', username: 'bonna', password: 'masum123')
bidder2 = Bidderprofile.new(first_name: 'Azim', last_name: 'Ullah', date_of_birth: '1980-12-08', address: '456 southern', city: 'memphis', state: 'TN', zipcode: 38111, country: 'usa', phone: 9876, email: 'ullah@gmail.com', username: 'azim', password: 'abc123')



car10.save! 
car11.save!  
car12.save!  
car13.save! 
car14.save! 
car15.save! 
car16.save! 
car17.save! 
car18.save! 
car20.save! 
car21.save!

admin1.save
admin2.save
admin3.save

bid11.bidderprofile = bidder2
bid12.bidderprofile = bidder2
bid13.bidderprofile = bidder1
bid14.bidderprofile = bidder2
bid15.bidderprofile = bidder2
bid16.bidderprofile =bidder2
bid17.bidderprofile = bidder2
bid18.bidderprofile =bidder1
bid19.bidderprofile = bidder1
bid111.bidderprofile = bidder1
bid122.bidderprofile = bidder1


bidder1.save!
bidder2.save!


bid11.save!
bid12.save!
bid13.save!
bid14.save!
bid15.save!
bid16.save!
bid17.save!
bid18.save!
bid19.save!
bid111.save!
bid122.save!




