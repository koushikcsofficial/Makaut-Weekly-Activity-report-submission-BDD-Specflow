using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace MakautTrial1.Pages
{
    public class SiteHomePage
    {
        public IWebDriver WebDriver { get; }

        public SiteHomePage(IWebDriver webDriver)
        {
            WebDriver = webDriver;
        }
        SelectElement selectoption = null;

        public IWebElement lnkLogin => WebDriver.FindElement(By.XPath("//span[text()='STUDENT']"));

        public IWebElement username => WebDriver.FindElement(By.XPath("//*[@id='username']"));

        public IWebElement password => WebDriver.FindElement(By.XPath("//*[@id='password']"));

        public IWebElement btnLogin => WebDriver.FindElement(By.XPath("//a[text()='Submit']"));

        public IWebElement lnkWeeklyActivity => WebDriver.FindElement(By.XPath("//*[@id='dashApp']/div/div[1]/div/ul/li[12]/a/span[2]"));

        public IWebElement WeekSelectInputField => WebDriver.FindElement(By.Id("week"));

        public IWebElement SemesterSelectInputField => WebDriver.FindElement(By.Id("SEMCODE"));

        public IWebElement CourseSelectInputField => WebDriver.FindElement(By.Id("COURSECD"));

        public IWebElement SubjectSelectInputField => WebDriver.FindElement(By.Id("SUBJECTCODE"));

        public IWebElement TopicCoveredInputField => WebDriver.FindElement(By.Id("topic_covered"));

        public IWebElement PlatformUsedInputField => WebDriver.FindElement(By.Id("platform_used"));

        public IWebElement ClassTakenBySelectInputField => WebDriver.FindElement(By.Id("class_taken_by"));

        public IWebElement DateTimeInputField => WebDriver.FindElement(By.Id("date_tme"));

        public IWebElement LectureLinkInputField => WebDriver.FindElement(By.Id("record_lecture_upload_link"));

        public IWebElement DurationInputField => WebDriver.FindElement(By.Id("duration_in_min"));

        public IWebElement PostClassInterractionInputField => WebDriver.FindElement(By.Id("post_class_interraction_note"));

        public IWebElement AssignmentReceivedInputField => WebDriver.FindElement(By.Id("assignment_received"));

        public IWebElement AssignmentSubmittedInputField => WebDriver.FindElement(By.Id("assignment_submitted"));

        public IWebElement TestAttendedInputField => WebDriver.FindElement(By.Id("test_attended_if_any"));

        public IWebElement DailySelfActivityInputField => WebDriver.FindElement(By.Id("daily_self_acitvity"));

        public IWebElement RemarkInputField => WebDriver.FindElement(By.Id("remark"));

        public IWebElement btnDetailsSubmit => WebDriver.FindElement(By.Id("btnSubmit"));

        public IWebElement lnkDashboard => WebDriver.FindElement(By.XPath("//a[contains(text(),'Dashboard')]"));



        public void clickDivForLogin()=>lnkLogin.Click();
        public void Login(string Username,string Password)
        {
            username.SendKeys(Username);
            password.SendKeys(Password);
        }
        public void clickSubmitForLogin()=> btnLogin.Click();
        public void clickWeeklyActivity() => lnkWeeklyActivity.Click();
        public void closeBrowser() => WebDriver.Close();

        public void MaximizeWindow()=> WebDriver.Manage().Window.Maximize();

        public void SelectWeek(string Weekname)
        {
            Weekname = Weekname.Trim();
            selectoption = new SelectElement(WeekSelectInputField);
            selectoption.SelectByText(Weekname.ToLower(), true);
        }

        public void SelectSemester(string SemName)
        {
            selectoption = new SelectElement(SemesterSelectInputField);
            selectoption.SelectByValue("SM08");
            Thread.Sleep(2000);
        }

        public void SelectCourse(string CourseName)
        {
            WebDriver.FindElement(By.XPath("//*[@id='weekly-report-save']/div/div[2]/div[3]/div/div")).Click();
            selectoption = new SelectElement(CourseSelectInputField);
            selectoption.SelectByText(CourseName, true);
        }

        public void SelectSubject(string SubjectName)
        {
            selectoption = new SelectElement(SubjectSelectInputField);
            selectoption.SelectByText(SubjectName, true);
        }
        public void EnterTopic(string TopicName)
        {
            TopicCoveredInputField.SendKeys(TopicName);
        }
        public void EnterPlatformUsed(string PlatformName)
        {
            PlatformUsedInputField.SendKeys(PlatformName);
        }
        public void SelectSubjectTeacher(string TeacherName)
        {
            selectoption = new SelectElement(ClassTakenBySelectInputField);
            selectoption.SelectByText(TeacherName, true);
        }

        public void SelectDateTime(string Day, string Month, string Hour, string Minute, string AMorPM)
        {
            DateTimeInputField.Click();
            WebDriver.FindElement(By.XPath("//div[contains(@class, 'datetimepicker-days')]/table/thead/tr/th[contains(@class, 'switch')]")).Click();
            Thread.Sleep(1000);
            string xpathforMonth = "//div[contains(@class, 'datetimepicker-months')]/table/tbody/tr/td/span[" + Month.Trim() + "]";
            WebDriver.FindElement(By.XPath(xpathforMonth)).Click();
            Thread.Sleep(1000);
            string xpathforDay = "//div[contains(@class, 'datetimepicker-days')]/table/tbody/tr/td[text()='" + Day.Trim() + "']";
            WebDriver.FindElement(By.XPath(xpathforDay)).Click();
            Thread.Sleep(1000);
            string xpathforHour = "//div[contains(@class, 'datetimepicker-hours')]/table/tbody/tr/td/fieldset/span[@class='hour hour_" + AMorPM.Trim().ToLower() + "'][text()='" + Hour.Trim() + "']";
            WebDriver.FindElement(By.XPath(xpathforHour)).Click();
            Thread.Sleep(1000);
            string xpathforMinute = "//div[contains(@class, 'datetimepicker-minutes')]/table/tbody/tr/td/fieldset/span[text()='" + Minute.Trim() + "']";
            WebDriver.FindElement(By.XPath(xpathforMinute)).Click();
        }
        public void EnterPostInteractionNote(string PostInteractionNote)
        {
            PostClassInterractionInputField.SendKeys(PostInteractionNote);
        }
        public void EnterAssignmentReceived(string AssignMentReceived)
        {
            AssignmentReceivedInputField.SendKeys(AssignMentReceived);
        }
        public void EnterAssignmentSubmitted(string AssignMentSubmitted)
        {
            AssignmentSubmittedInputField.SendKeys(AssignMentSubmitted);
        }
        public void EnterTestAttended(string TestAttended)
        {
            TestAttendedInputField.SendKeys(TestAttended);
        }
        public void EnterDailySelfActivity(string DailySelfActivity)
        {
            DailySelfActivityInputField.SendKeys(DailySelfActivity);
        }
        public void EnterRemarks(string Remarks)
        {
            RemarkInputField.SendKeys(Remarks);
        }
        public void EnterLectureLink(string LectureLink)
        {
            LectureLinkInputField.SendKeys(LectureLink);
        }
        public void EnterDuration(string duration)
        {
            DurationInputField.SendKeys(duration);
        }
        public void GotoDashboard()
        {
            lnkDashboard.Click();
        }
        public void ClickSubmit()
        {
            btnDetailsSubmit.Click();
            Thread.Sleep(2000);
        }

    }
}
