using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;

namespace NUnitTestProject5.Pages
{
    class LoginPage
    {
        
            public IWebDriver WebDriver { get; }
        public LoginPage(IWebDriver webDriver)
        {
            WebDriver = webDriver;

        }

        public IWebElement lnkLogin => WebDriver.FindElement(By.CssSelector("a[class='item']"));
        public IWebElement txtEmail => WebDriver.FindElement(By.CssSelector("input[placeholder = 'Email address']"));
        public IWebElement txtPassword => WebDriver.FindElement(By.Name("password"));
        public IWebElement btnLogin => WebDriver.FindElement(By.XPath("//BUTTON[@class='fluid ui teal button']"));

        public void ClickLogin() => lnkLogin.Click();
        public void Login(string Emailaddress, string Password)
        {
            txtEmail.SendKeys(Emailaddress);
            txtPassword.SendKeys(Password);
        }
        public void ClickLoginButton() => btnLogin.Click();

    }
}
