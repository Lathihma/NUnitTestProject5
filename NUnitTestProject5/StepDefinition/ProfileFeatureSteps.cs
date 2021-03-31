using NUnitTestProject5.Pages;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Threading;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace NUnitTestProject5.feature_file
{
    [Binding]
    public class ProfileFeatureSteps
    {
       
        public static IWebDriver webDriver = new ChromeDriver();
        LoginPage loginpage = null;
        SkillsTab skillstab = new SkillsTab(webDriver);
       readonly Language language = new Language(webDriver);


        // login feature
        [Given(@"launch the application")]
        public void GivenLaunchTheApplication()
        {
            IWebDriver webdriver = new ChromeDriver();
            webdriver.Navigate().GoToUrl("http://localhost:5000/");
            webdriver.Manage().Window.Maximize();
            loginpage = new LoginPage(webdriver);
        }

        [Given(@"Click on signin button")]
        public void GivenClickOnSigninButton()
        {
            loginpage.ClickLogin();
        }

        [Given(@"Enter the following details")]
        public void GivenEnterTheFollowingDetails(Table table)
        {
            dynamic data = table.CreateDynamicInstance();
            loginpage.Login((string)data.Emailaddress, (string)data.Password);
        }

        [Then(@"click on login button")]
        public void ThenClickOnLoginButton()
        {
            loginpage.ClickLoginButton();
        }


        // details to language button
        [Given(@"To enter the languages set tab and click on addnew button")]
        public void GivenToEnterTheLanguagesSetTabAndClickOnAddnewButton()
        {
            Thread.Sleep(5000);
            language.ClickLanguage();
            language.clickAdd();
        }


        [When(@"you choose the option and click on add")]
        public void WhenYouChooseTheOptionAndClickOnAdd(Table table)
        {
            dynamic data = table.CreateDynamicInstance();
            language.Add1((string)data.language, (string)data.level);
            
        }
        [Then(@"the languges should be shown")]
        public void ThenTheLangugesShouldBeShown()
        {
            language.clickAddButton();
        }



        // details to skills tab
        [Given(@"To enter the skill set form")]
        public void GivenToEnterTheSkillSetForm()
        {
            skillstab.ClickSkill();
        }

        [Given(@"I click on add New button")]
        public void GivenIClickOnAddNewButton()
        {
            skillstab.AddNew();
        }

        [Given(@"I fill the details under the skill tab")]
        public void GivenIFillTheDetailsUnderTheSkillTab(Table table)
        {
            dynamic data = table.CreateDynamicInstance();
            skillstab.Add1((string)data.skill, (string)data.level);
        }

        [When(@"you click on add button for skills")]
        public void WhenYouClickOnAddButtonForSkills()
        {
            skillstab.AddBTN();

        }


    }
}




