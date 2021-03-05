
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;

namespace NUnitTestProject5.Pages
{
    class SkillsTab
    {
        public IWebDriver WebDriver { get; }
        public SkillsTab(IWebDriver webDriver)
        {
            WebDriver = webDriver;

        }
        public IWebElement skillBtn => WebDriver.FindElement(By.CssSelector("a[class='item active']"));
        public IWebElement AddNewBtn => WebDriver.FindElement(By.CssSelector("div[class='ui bottom attached tab segment tooltip-target active'] div[class='ui teal button ']"));

        public IWebElement TxtBox => WebDriver.FindElement(By.Name("name"));
        public IWebElement dropdownBtn => WebDriver.FindElement(By.Name("level"));

        public IWebElement addBtn => WebDriver.FindElement(By.CssSelector("input[class='ui teal button']"));

        public void ClickSkill() => skillBtn.Click();
        public void AddNew() => AddNewBtn.Click();

        public void Add1(string skill, string level)

        {
            TxtBox.SendKeys(skill);
            dropdownBtn.SendKeys(level);

        }

        public void AddBTN() => addBtn.Click();

    }
}
   

