# Individual Assignment Specifications

- Team: HUB Online Auction System
- Iteration: Iteration 1

## Special Roles

- Project Coordinator: Anik Khan
- Quality Assurance Czar: Zannatul Firdous
- Video Demo Creator:
  - Mithun Saha
- Demo-Booth Operator: Anik Khan

## Tasks: Anik Khan

### Task 1: Item Model Class Development
- Description:  This model class will have the details of the items. 
- How to Evaluate: List of items will be showed. 
- Outcome of Task: Database has a table named Items.

### Task 2: Biddingtable Model Class Development and one to many associations with the bidders
- Description:  Bidding model class will have the bids with the bidder id, product id and the price of one bid. One bidder can bid on multiple products.
- How to Evaluate: The biddingtable index page will show the item with associated bidder. 
- Outcome of Task: Database has a table named Biddingtables and each row is associated with one bidder.

### Task 3: Developing association with Item and Biddingtable class
- Description:  Item will be associated with one row in Bidding table. As several bidders can bid on a signle item, one to many association is needed here.
- How to Evaluate: In the biddingtable, each row will have an item.
- Outcome of Task: Item and Biddingtable is associated.

### Task 4: Bidderprofile and Biddingtable association
- Description: One biddder can bid on several items. So, here we need to implement one to many association. 
- How to Evaluate: In the biddingtable, each row will have a bidder associated with one bid.
- Outcome of Task: Each Bidderprofile is associated with several Biddingtable

### Task 5: Seed data in item table
- Description: Add product information in the database and associates with specific Admin
- How to Evaluate: The item list will show the items. 
- Outcome of Task: Items will be showed in Items table.

### Task 6: Admin Item Associations
- Description: Admin will have multiple items. So, we need to create one to many association. 
- How to Evaluate: Admin will be able to post the items that he wants to sell.
- Outcome of Task: Each item in the items table will have one admin who posted that item. 

### Task 8: Session controller for Bidderprofile
- Description: This controller is responsible for login system for Bidderprofile.
- How to Evaluate: Bidders will be able to stay active, see the items and bid on items.
- Outcome of Task: Bidder will be able to login and logout.

### Task 9: Login and Logout for Bidders
- Description: Login and Logout routes were added in Session controller as create and destroy. 
- How to Evaluate: Bidders will be able to stay active, see the items and bid on items.
- Outcome of Task: Bidders will be able to login, logout, see the items and bid on items.

### Task 10: Seed data in Adminprofiles, Bidderprofiles and Biddingtables
- Description: Seed the data in Adminprofiles, Bidderprofiles and Biddingtables with associations.
- How to Evaluate: After starting the server, without additional registration, bid on item and post item, corresponding tables will be populated.
- Outcome of Task: Data will be showed in corresponding tables.

### Task 11: Corresponding routing in view pages for bidder
- Description: Corresponding routings were implemented for bidders. After registration bidder will be redireted to Bidder's login page. After login, bidder will be redirected to his profile page.There he/she will be able to see the item lists and bid on specific item.
- How to Evaluate: Bidders will be able to route through the webapp and place bid on items.
- Outcome of Task: Bidders will be able to visit associated pages with bidder and items in addition to login and logout.

## Tasks: Mithun Saha

### Task 1: Bidderprofile model development
- Description: Bidderprofile model class will have the necessary attributes for incorporating detail information of a Bidder.
- How to Evaluate: After logging in, the Bidder will be able to see his profile summary.
- Outcome of Task: The user can see, update his/her profile information and bid for items.

### Task 2: Develop Bidderprofiles Controller Class - Create Method 
- Description:  This method will enable a user to register as bidder by providing necessaary information.
- How to Evaluate: In the home page, there will be a link for Bidder registration which will take the user to a page where he/she will put information and upon submitting,
				   information will be saved.
- Outcome of Task: User information will be populated in the database and will take the user to another page for next series of actions.

### Task 3: Develop Bidderprofiles Controller Class - Show and Edit Method
- Description:  These controller actions will give the Bidder ability to see summmary information of his/her profile and edit, if necessary.
- How to Evaluate: A Bidder will be able to view his/her vital profile details after logging in along with an editing option. If the user decides to edit, it will redirect to a page
				   where after making necessary editions and submitting the form, information will be saved and the user will be able to see the changes.
- Outcome of Task: Updated Bidder profile 

### Task 4: Seed the Bidderprofile table 
- Description: Add some initial Bidder profiles in the database 
- How to Evaluate: The database will contain profile information of some Bidders.
- Outcome of Task: Database populated with innitial Bidderprofile information

### Task 5: Place a single bid for an item - Develop Bidding Controller Class - Bid Method
- Description: When a bidder will bid on an item, one row with product name, Bidder name and Bid price will be added in the Bidding table.
- How to Evaluate: If a bidder bids on a product, he/she will be able to see the bid that has been put.
- Outcome of Task: Bidding table populated with the latest Bid information

### Task 6: Restrict Bidder to maximum one bid per item - Enhance Biddingtables Controller Class - Bid method
- Description: Some functionality in Biddingtables Controller Class should be included to ensure one bidder will be able to bid on a particular item only once.
- How to Evaluate: If the bid is not successful, the bidder will be redirected to the items index page for placing new bids.  
- Outcome of Task: Bidder not able to bid more than once for one item


## Tasks: Zannatul Firdous

### Task 1: Home page development 
- Description: Designed home page by adding images, brief description and few tabs. I styled by using CSS, Javascript.  
- How to Evaluate: When a user gives the url of website, he/she will see the index page. When user clicks on Registration, Log in, Policy, Developers and contact us then corresponding details
	will be displayed. I managed them in one page by changing contains related to links. Added few links to under Registration and Log in that redirects to Admin/Bidder Registration and Admin/Bidder Log in page.  
- Outcome of Task: Home page renovation.

### Task 2: Adminprofile model development
- Description: Adminprofile model class have been made which consists of necessary attributes that illustrates detail information of a Admin.
- How to Evaluate: After logging in, the Admin will be able to see his/her profile page.
- Outcome of Task: Admin profile is displayed and can update his/her profile information.

### Task 3: Develop Adminprofiles Controller Class - Create Method 
- Description:  This method will enable a Admin to register by providing necessaary attributes.
- How to Evaluate: In the home page, there is a link for Admin registration which will take him/her to individual registration page where he inserted necessery information and after submitting,
				   information will be saved on database.
- Outcome of Task: Admin profile information will be inserted in the database.

### Task 4: Develop Adminprofiles Controller Class - Show and Edit Method
- Description:  These controller actions will give the Admin the ability to see summmary information of his/her profile and can be able to edit, if necessary.
- How to Evaluate: A Admin will be able to view his/her profile details after registering/log in along with an edit option. If the admin decides to edit, it will redirect to a page
				   where edit fields are shown and submitting the form after editing, information will be saved and the admin will be able to see the changes.
- Outcome of Task: Updated Admin profile view 

### Task 5: Bidder profile view from Admin profile
- Description: An admin can see all the bidders and their all information. 
- How to Evaluate: By clicking 'Bidders' link from particular admin profile, it will redirect to all bidders profile.
- Outcome of Task: Admin profile along with bidder profile

### Task 6: Seed the Adminprofile table 
- Description: Add some initial Admin profiles in the database 
- How to Evaluate: The database will contain profile information of all Admins.
- Outcome of Task: Database with initial Adminprofile information





