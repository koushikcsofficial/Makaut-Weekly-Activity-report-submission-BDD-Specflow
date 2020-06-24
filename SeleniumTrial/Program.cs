using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Threading;

namespace SeleniumTrial
{
    class Program
    {
        IWebDriver webDriver = new ChromeDriver();
        static void Main(string[] args)
        {
            SelectElement selectoption = null;
            IWebDriver webDriver = new ChromeDriver();
            webDriver.Navigate().GoToUrl("https://makaut1.ucanapply.com/");
            webDriver.FindElement(By.XPath("//span[text()='STUDENT']")).Click();
            Thread.Sleep(2000);
            webDriver.FindElement(By.XPath("//*[@id='username']")).SendKeys("28100116054");
            webDriver.FindElement(By.XPath("//*[@id='password']")).SendKeys("JSTO710");
            webDriver.FindElement(By.XPath("//a[text()='Submit']")).Click();
            webDriver.Manage().Window.Maximize();
            webDriver.FindElement(By.XPath("//span[text()='Weekly Activity Report ']")).Click();
            Thread.Sleep(1000);
            //st.SelectDateTime("14", "3", "11", "11:15", "AM");
            string Month = "3";
            string Day = "14";
            string Hour = "11";
            string Minute = "11:15";
            string AMorPM = "AM";
            webDriver.FindElement(By.Id("date_tme")).Click();
            Thread.Sleep(1000);
            webDriver.FindElement(By.XPath("//div[contains(@class, 'datetimepicker-days')]/table/thead/tr/th[contains(@class, 'switch')]")).Click();
            Thread.Sleep(3000);
            string xpathforMonth = "//div[contains(@class, 'datetimepicker-months')]/table/tbody/tr/td/span[" + Month.Trim() + "]";
            webDriver.FindElement(By.XPath(xpathforMonth)).Click();
            Thread.Sleep(4000);
            //div[contains(@class, 'datetimepicker-days')]/table/tbody/tr/td[text()='14']
            string xpathforDay = "//div[contains(@class, 'datetimepicker-days')]/table/tbody/tr/td[text()='" + Day.Trim() + "']";
            webDriver.FindElement(By.XPath(xpathforDay)).Click();
            Thread.Sleep(3000);
            string xpathforHour = "//div[contains(@class, 'datetimepicker-hours')]/table/tbody/tr/td/fieldset/span[@class='hour hour_" + AMorPM.Trim().ToLower() + "'][text()='" + Hour.Trim() + "']";
            webDriver.FindElement(By.XPath(xpathforHour)).Click();
            Thread.Sleep(1000);
            string xpathforMinute = "//div[contains(@class, 'datetimepicker-minutes')]/table/tbody/tr/td/fieldset/span[text()='" + Minute.Trim() + "']";
            webDriver.FindElement(By.XPath(xpathforMinute)).Click();
            Thread.Sleep(1000);
            Thread.Sleep(4000);

            selectoption = new SelectElement(WeekSelectInputField);
            selectoption.SelectByText(Weekname, true);

        }
    }
}
