# Individual Assignment Specifications

- Team: HUB Online Auction System
- Iteration: Iteration 2

## Special Roles

- Project Coordinator: Anik Khan
- Quality Assurance Czar: Anik Khan and Zannatul Firdous
- Video Demo Creators:
  - Mithun Saha and Zannatul Firdous

- Demo-Booth Operator: Anik Khan and Mithun Saha

## Tasks: Anik Khan 
 
### Task 1: After the Admin stops the auction modify the Biddingtable table 
- Description:  Expiration time will be added as an attribute in Item table. One timer will be implemented. After the expiration time, one event will be triggered. Then Biddingtable will be modified. Biddingtable will only have the active auctions.  
- How to Evaluate: After the expiration, Item's index page won't have the item that is expired. 
- Outcome of Task: The admin will be able to end the auction.
 
### Task 2: Delete bidder 
- Description:  One admin can delete any Bidder and the bids associated with that bidder. 
- How to Evaluate: Admin won't see the bids given by the deleted bidder. 
- Outcome of Task: Admin will be able to delete a bidder and all the bids by that bidder will be deleted.
 
### Task 3: Highest unique bid 
- Description:  For one item, the highest unique bid price will be calculated after the time is expiration. 
- How to Evaluate: Admin will be able to see the winner bidder and the higest unique bid price against the item. 
- Outcome of Task: Highest unique bidder from the Biddingtable will be selected. 
 
### Task 4: Winner of a bid 
- Description:  For one item, the winner of the auction will be selected from database after the auction is stopped. 
- How to Evaluate: After one expiration, the auction will end and the admin will be able to see the winning bidder. 
- Outcome of Task: Winner of the bid will be selected and in the items page the item's description will change and the winner of the bid will be presented.

### Task 6: Login and Logout for Adminprofiles.
- Description:  One sessionadmin controller will be added that will be dedicated for Adminprofiles.
- How to Evaluate: Admin will be able to login and logout and browse the webapp.
- Outcome of Task: Admin will be able to login and add items and browse throught the site.


## Tasks: Mithun Saha

### Task 1: Biddings Controller develpoment to enable a user to see all the running bids he has made.
- Description: A user will be able to see all the active bids he has made at any time. 
- How to Evaluate: From the bidderprofile show page the user will be able to go to a page where information related to all his active bids will be displayed. 
- Outcome of Task:Bidder sees all his bids.

### Task 2: Develop model class validation - Bidderprofile
- Description: Bidderprofile attribute validations need to be enforced so that Attributes contain values that are consistent with the definitions.
- How to Evaluate: A Bidder will be able to register only after giving valid inputs.
- Outcome of Task:Validations has been enforced.

### Task 3: Develop testing module - Bidderprofile    
- Description: When a bidder will try to register, he/she needs to provide valid inputs. 
- How to Evaluate: If the user gives invalid inputs during Bidder registration, he/she will be notified promptly regarding the errors in the input fields. If valid input is given,successful completion of the action will also be notified.
					
- Outcome of Task: Unit test have been put in place.

### Task 4: Develop model class validation - Biddingtable
- Description:  Biddingtable attribute validations need to be enforced so that Attributes contain values that are consistent with the definitions.
- How to Evaluate: A Bidder will be able to bid only after giving valid inputs.
- Outcome of Task: Bidder has to give price in correct format. Else he is notofied.

### Task 5: Develop testing module - Biddingtable
- Description:  When a bidder will try to bid, he/she needs to provide valid inputs.
- How to Evaluate: If the user gives invalid inputs during Bidding, he/she will be notified promptly regarding the errors in the input fields. If valid input is given,successful completion of the action will also be notified.
					
- Outcome of Task: User is  notified properrly abot the mistakes.

### Task 6: Upgrade Biddingtables Controller class to enforce further restrictions on bidding by limiting bidding price. 
- Description:  This change in the controller action will ensure that a user cannot bid an item using a price greater than the highest Auction price. 
- How to Evaluate: Bidder will not be able to bid using a price greater than the highest Auction price. 
- Outcome of Task: Bidder cannot bid price more than the maximum bid price.


## Tasks: Zannatul Firdous

### Task 1: Controller action of bidding items addition by specific admin.
- Description: Admin can add items for bidding.
- How to Evaluate: If Admin clicks "Item addition", it will be redirect to items page and after submitting details of item, they will be inserted to database.
- Outcome of Task: For bidding to bidders, Admin is able to add new items perfectly.

### Task 2: Controller action to enable an Admin to see all the items's bidding he/she has posted. 
- Description: An admin will be able to see all the items' bid he/she has made so far. 
- How to Evaluate: From the adminprofile show page the admin will be able to go to a page where information related to his/her all added items' will be displayed. 
- Outcome of Task: Admin is able to see all the items only added by him/her.

### Task 3: Validation action model for all the attributes of admin profiles.
- Description: Admin profile attributes should have some restriction like length, format, inclusion, uniqueness, presence etc.
- How to Evaluate: If any attribute of admin profile violates the validation, they will not be inserted to database.
- Outcome of Task: Validations are working properly.

### Task 4: Test action model for all the attributes of admin profiles.
- Description: Wil make several test cases to implement validation restriction like length, format, inclusion, uniqueness, presence etc.
- How to Evaluate: Error message will be displayed if any attribute of admin profile violates the validation.
- Outcome of Task: Unit tests has been done

### Task 5: User interface renovation
- Description: UI renovation for all modules like Admin, item and bidder using styles.
- How to Evaluate: Well organized pages will be shown.
- Outcome of Task: We can see renovated UI.

