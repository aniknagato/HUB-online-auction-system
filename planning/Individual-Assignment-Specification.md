# Individual Assignment Specifications

- Team: HUB Online Auction System
- Iteration: Iteration 1

## Special Roles

- Project Coordinator: Anik Khan
- Quality Assurance Czar: Mithun Saha
- Video Demo Creators:
  - Mithun Saha
  - Zannatul Firdous
- Demo-Booth Operator: Anik Khan

## Tasks: Anik Khan

### Task 1: Item Model Class Development
- Description:  This model class will have the details of the items. 
- How to Evaluate: List of items will be showed. 
- Outcome of Task: xxx

### Task 2: Bidding Model Class Development and one to many associations with the bidders
- Description:  Bidding model class will have the bids with the bidder id, product id and the price of one bid. One bidder can bid on multiple products.
- How to Evaluate: Admin will be able to see the bidders against the items he wants to sell.
- Outcome of Task: xxx

### Task 3: Developing association with Item and Bidding class
- Description:  Item will be associated with one row in Bidding table
- How to Evaluate: 
- Outcome of Task: xxx

### Task 4: Winner of a bid
- Description:  Once the time expired for an auction, the winner of a product will be set. So, one timer is needed.
- How to Evaluate: After one expiration time, the auction will end and the admin will be able to see the winning bidder.
- Outcome of Task: xxx

### Task 5: Seed the Product table
- Description: Add product information in the database and associates with specific Admin
- How to Evaluate: The item list will show the items. 
- Outcome of Task: xxx

### Task 6: Admin Item Associations
- Description: Admin will have multiple items. So, we need to create one to many association.
- How to Evaluate: Admin will be able to browse the items that he wants to sell.
- Outcome of Task: xxx


## Tasks: Mithun Saha

### Task 1: Bidder model development
- Description: Bidder model class will have the bidder_id and password. 
- How to Evaluate: After loging the bidder will be able to browse the items and bid on it.
- Outcome of Task: xxx

### Task 2: Bidderprofile model development
- Description: Bidderprofile model class will have the details information of the bidders.
- How to Evaluate: After logging in, the Bidder will be able to see his details.
- Outcome of Task: xxx

### Task 3: Seed the bidder table 
- Description: Add some initial bidders in the database 
- How to Evaluate: The database will contain some bidder information along with necesary restrictions
- Outcome of Task: xxx

### Task 4: Develop Bidder Controller
- Description:  The class that gives the ability to create bidder.
- How to Evaluate: Bidder will be able to register and browse the web app.
- Outcome of Task: xxx

### Task 5: Develop Bidderprofile Controller
- Description:  This class will give the ability to show and edit Bidderprofile.
- How to Evaluate: Bidder will be able to change his information and see his profile details after login. 
- Outcome of Task: xxx

### Task 6: Restrict Bidder to maximum one bid per item
- Description: Some functionality in bidding controller class should be incorporated so that one bidder will be able to bid on a particular item only once.
- How to Evaluate: "Bid" button will be diappeared when one bidder place a bid on certain item.  
- Outcome of Task: xxx


## Tasks: Zannatul Firdous


### Task 1: Admin Model Development
- Description: Admin model class will have the id and password. So this class is specifically for Admin of HUB online auction system.
- How to Evaluate: A registered Admin will be able to provide user_id and password and when click on the "Login" button will be redirect to his/her profile page.
- Outcome of Task: 

### Task 2: Place a signle bid for an item
- Description: When one bidder will bid on an item, one row in Bidding table will be added with a product and a bidder and a price.
- How to Evaluate: If one bidder bid on a product, the admin will be able to see one additional bid for his item.
- Outcome of Task:

### Task 3: Adminprofile Model 
- Description: Adminprofile Model will have details information of the signed in admin.
- How to Evaluate: After login, admin will be able to see his details in his profile page.
- Outcome of Task:

### Task 4: Develop Admin Controller
- Description:  The class that gives the ability to login.
- How to Evaluate: After login, the Adminprofile controller will show admin's information.
- Outcome of Task: xxx

### Task 5: Develop Adminprofile Controller
- Description:  This class will give the ability to show and edit profile information.
- How to Evaluate: After login, the admin's profile information will be showed.
- Outcome of Task: xxx

### Task 6: Seed the admin table
- Description: Add an initial admin in the database 
- How to Evaluate: One admin will be present along with the necessary database restrictions.
- Outcome of Task: xxx


