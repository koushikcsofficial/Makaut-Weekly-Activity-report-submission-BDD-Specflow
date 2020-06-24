using MakautTrial1.Pages;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace MakautTrial1.Steps
{
    [Binding]
    public sealed class MakautSiteActivitySteps
    {

        SiteHomePage siteHomePage = null;


        [Given(@"I launched the site")]
        public void GivenILaunchedTheSite()
        {
            IWebDriver webDriver = new ChromeDriver();
            webDriver.Navigate().GoToUrl("https://makaut1.ucanapply.com/");
            siteHomePage = new SiteHomePage(webDriver);
        }

        [Given(@"I clicked the login link")]
        public void GivenIClickedTheLoginLink()
        {
            siteHomePage.MaximizeWindow();
            Thread.Sleep(2000);
            siteHomePage.clickDivForLogin();
            Thread.Sleep(2000);
        }

        [Given(@"I enter the following credential")]
        public void GivenIEnterTheFollowingCredential(Table table)
        {
            dynamic data = table.CreateDynamicInstance();
            //dynamic data = table.CreateSet<Credential>();
            //foreach(var item in data)
            //{
            //    siteHomePage.Login(Convert.ToString(data.UserName), (string)data.Password);
            //}
            siteHomePage.Login(Convert.ToString(data.UserName), (string)data.Password);
        }

        [Given(@"I click submit Button")]
        public void GivenIClickSubmitButton()
        {
            siteHomePage.clickSubmitForLogin();
        }

        [Given(@"Wait for a while")]
        public void GivenWaitForAWhile()
        {
            Thread.Sleep(3000);
        }

        [Given(@"Clicked in Weekly Activity Report")]
        public void GivenClickedInWeeklyActivityReport()
        {
            siteHomePage.clickWeeklyActivity();
        }
        [Given(@"I enter the following Weekly Activity Details")]
        public void GivenIEnterTheFollowingWeeklyActivityDetails(Table table)
        {
            var data = table.CreateSet<Activity>();
            foreach (var row in data)
            {
                siteHomePage.GotoDashboard();
                siteHomePage.clickWeeklyActivity();
                siteHomePage.SelectWeek(row.WeekDetails.ToString());
                siteHomePage.SelectSemester(row.Semester.ToString());
                siteHomePage.SelectCourse(row.Course.ToString());
                siteHomePage.SelectSubject(row.Subject.ToString());
                siteHomePage.EnterTopic(row.TopicCovered.ToString());
                siteHomePage.EnterPlatformUsed(row.PlatformUsed.ToString());
                siteHomePage.SelectSubjectTeacher(row.ClassTakenBy);
                siteHomePage.SelectDateTime(row.Day.ToString(), row.Month.ToString(), row.Hour.ToString(), row.Minute.ToString(), row.TimeOfTheDay.ToString());
                siteHomePage.EnterLectureLink(row.LectureLink);
                siteHomePage.EnterDuration(row.Duration.ToString());
                siteHomePage.EnterAssignmentReceived(row.AssignmentReceived.ToString());
                siteHomePage.EnterAssignmentSubmitted(row.AssignmentSubmitted.ToString());
                siteHomePage.EnterDailySelfActivity(row.DailySelfActivity.ToString());
                siteHomePage.EnterRemarks(row.Remarks.ToString());
                siteHomePage.EnterPostInteractionNote(row.PostClassNotes.ToString());
                siteHomePage.EnterTestAttended(row.TestAttended.ToString());
                siteHomePage.ClickSubmit();
            }
        }
        [Then(@"Close The Browser")]
        public void ThenCloseTheBrowser()
        {
            siteHomePage.closeBrowser();
        }


    }
}
