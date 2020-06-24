using System;
using System.Collections.Generic;
using System.Text;

namespace SeleniumTrial
{
    public class ActivityModel
    {
        private string datetime;
        public string week { get; set; }
        public string sem { get; set; }
        public string course { get; set; }
        public string subject { get; set; }
        public string topicCovered { get; set; }
        public string platformUsed { get; set; }
        public string classTakenBy { get; set; }
        public string DateTime
        {
            set
            {
                datetime = value;
            }
        }
        public string lectureLink { get; set; }
        public int duration { get; set; }
        public string interactionNote { get; set; }
        public string assignmentReceived { get; set; }
        public string assignmentSubmitted { get; set; }
        public string testAttended { get; set; }
        public string dailySelfActivity { get; set; }
        public string remark { get; set; }
        public string Day
        {
            get { return GetDay(datetime); }
        }
        public string Month
        {
            get { return GetMonth(datetime); }
        }
        public string Hour
        {
            get { return GetHour(datetime); }
        }
        public string Minute
        {
            get { return GetMinute(datetime); }
        }
        public string TimeOfTheDay
        {
            get { return AMorPM(datetime); }
        }

        //Methods
        private string GetDay(string datetime)
        {
            int FirstIndexofDot = datetime.IndexOf('.');
            return datetime.Substring(0, FirstIndexofDot);
        }
        private string GetMonth(string datetime)
        {
            return datetime.Split('.')[1];
        }
        private string GetHour(string datetime)
        {
            int FirstIndexofSlash = datetime.IndexOf('/');
            int FirstIndexofColon = datetime.IndexOf(':');
            return datetime.Substring(FirstIndexofSlash + 1, (FirstIndexofColon - FirstIndexofSlash) - 1);
        }
        private string GetMinute(string datetime)
        {
            int FirstIndexofSlash = datetime.IndexOf('/');
            return datetime.Substring(FirstIndexofSlash + 1);
        }
        private string AMorPM(string datetime)
        {
            int hour = Convert.ToInt32(GetHour(datetime));
            if (hour == 12)
                return "PM";
            else if (hour >= 1 && hour <= 8)
                return "PM";
            else
                return "AM";
        }
    }
}
