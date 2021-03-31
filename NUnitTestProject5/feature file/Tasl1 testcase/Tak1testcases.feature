Feature: Add profile deatils
 As a user,  want to add a profile deatils, so people seeking for skills can look into my deatils

 Acceptance Criteria:
 Acceptance Criteria
● Seller is able to add the Profile Details.
● Seller is able to see the seller’s details on the Profile page.
@mytag

Scenario: create an account
	Given After launching the application
	And click on join to crete an account
	And  enter the  details
	When click the Join button
	Then   "registration successful" is displayed

Scenario: Perform  successful Login to the website
	Given successful login
	And Login to the profile
	And  enter the  valid details as shown below
	  | email address                 | password |
	  | lathishmasuvarna@gmail,com | 123456   |
	When click the login button
	Then it should take you to the main page

Scenario:  unsuccessful Login to the website
    Given Login to the profile
    And  enter the  invalid email address and valid password
	  | email address                 | password |
	  | lathishmasuvarnagmail,com | 123456789
Scenario:  unsuccessful Login to the website
Given Login to the profile
     When click the login button
	Then error pops up " enter valid email address " and " password must be atleast 6 characters"
Scenario:  unsuccessful Login to the website
	Given Login to the profile
	And  Enter the  valid  email address and invalid password
	  | email address                 | password |
	  | lathishmasuvarna@gmail.com | 123456
	When click the login button
	Then Notification pops up " confirm you email" and then click on " send email verification" button
	
	 
Scenario:click on the profile button to fill the profile deatils
      Given Profile page opens up (form1)
      And  Select the type  as per preference
	  When you can click on save
	  Then All the details will be saved
	 
	 Examples
	  availability      | hours                 |   earn target 
	          partime   | less than  30 hours a week | less than 500$ per month
Scenario:  adding the description on profile page
      Given  to fill the description 
	  And once you write the decription  within 600 characters
	  When  you click on  save option
	  Then the description should be saved
Scenario: successful save
	  Given To enter the skill set form 
	  And when you enter add feature for language
	  When you choose the option and click on add
	  Then details will be saved
	 Example
	  language  |language level
	  english   | conversational

Scenario: successful save with a condition for adding language
      Given To enter the skill set form 
	  And when you enter add feature for language
	  When you choose the option and click on  to add feature for the fourth language
	  Then details will be saved and add  button dissappears
Scenario: succesful save for education tab
	  Given To enter the skill set 
	  And when you enter add feature for Education
	  And you choose the option 
	  When  click on add button
	  Then details will be saved
	 Example
	  college/university name  | country of college/University  | Title |  degree        | year of graduation
	   VTU                     | India                          | B.Tech | engineering   |2017

	   
Scenario: unsuccesful save for education tab
	  Given To enter the skill set form 
	  And when you enter add feature for Education
	  And when you dont fill/select either feilds
	  When you choose the option and click on add
	  Then notifivation pops up " please enter all the feilds"
	  Example
	  college/university name  | country of college/University  | Title |  degree        | year of graduation
	   VTU                     | India                          | B.Tech |  Engineering   | 2017 
	   

Scenario: unsuccesful  save for the language feild
	  Given To enter the skill set form 
	  And when you enter add feature for language
	  And if you dont fill either of the feild
	  When  click on add
	  Then error pops up " Please enter language and level"

 Scenario:  adding same language again
	   Given to add the language
	   And when you click on the add new button under language tab
	   And when you enter the existing language and choose the level
	   When you click on add
	   Then notification pops up " dupilcated data"
	   
Scenario:  successful creation of all tabs
	  Given all the feilds are filled
	  And when you press skillswap button
	  Then it will redirect to another page 
Scenario: entering all the details to create a profile page
       Given Succesfull service listing
	   And enter all the required details
	   When you click on save button
	   Then notification pops up " Service list added successfully"
Scenario:  Adding the title on profile page using special charcters as a first character
      Given  To enter the first character as a  special symbol
	  And  enter the special symbol as a first character
	  When  you fill in all the remaing details  and click on save button
	  Then notification pops up saying " please complete the form correctly"
Scenario:  adding the description on profile page usig special charcters as a first character
      Given  To fill the description  by using special character
	  And enter the special symbol as a first character
	  When  you fill in all the remaing details  and click on save button
	  Then notification pops up saying " please complete the form correctly
Scenario: To make changes in the profile
	  Given  To select different category in the profile page
	  And once you update the category
	  When click on save button
	  Then Notification pops up "Service list updated successfully"