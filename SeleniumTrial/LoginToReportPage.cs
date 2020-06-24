using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;

namespace SeleniumTrial
{
    public class LoginToReportPage
    {
        public IWebDriver WebDriver { get; }

        public LoginToReportPage(IWebDriver webDriver)
        {
            WebDriver = webDriver;
        }

        private IWebElement lnkLogin => WebDriver.FindElement(By.XPath("//span[text()='STUDENT']"));

        private IWebElement username => WebDriver.FindElement(By.XPath("//*[@id='username']"));

        private IWebElement password => WebDriver.FindElement(By.XPath("//*[@id='password']"));

        private IWebElement btnLogin => WebDriver.FindElement(By.XPath("//a[text()='Submit']"));

        public void ClickDivForLogin() => lnkLogin.Click();

        public void EnterCredentialForLogin(string Username, string Password)
        {
            username.SendKeys(Username);
            password.SendKeys(Password);
        }
        public void SubmitAndLogin() => btnLogin.Click();
        
        private IWebElement linkToRegisterWeekly => WebDriver.FindElement(By.XPath("//*[@id='dashApp']/div/div[1]/div/ul/li[12]/a/span[2]"));

        public void ClickToGoWeeklyActivityPage() => linkToRegisterWeekly.Click();

        
        
    }
}
