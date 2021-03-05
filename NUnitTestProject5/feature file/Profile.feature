Feature: Profile Feature
    Inorder to add profile details
	so that my skills can be listed under skillsswap
	Simple calculator for adding two numbers

@automation
Scenario: Login to profile
	Given launch the application
	And Click on signin button
	And Enter the following details
	     | Emailaddress                  |  Password  |
		 | lathishmasuvarnaa@gmail.com   | lathishma  |
    Then    click on login button 


@automation      
Scenario: Add language tab
       Given To enter the languages set tab and click on addnew button
	   When you choose the option and click on add
	         | language  |     language level    |
	         | Hindi     |     Fluent            |
	   And  check for delete function

@automation
Scenario: successful Add to skill tab  
	  Given To enter the skill set form 
	  And  I click on add New button
	  And  I fill the details under the skill tab
	         | skill |  level    |
	         | API   | Beginner  |
      When  you click on add button for skills
	             