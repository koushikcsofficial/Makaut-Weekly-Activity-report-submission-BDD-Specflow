using System;
using System.Collections.Generic;
using System.Text;

namespace MakautTrial1.Steps
{
    public class Activity
    {
        private string datetime;
        public string WeekDetails { get; set; }
        public string Semester { get; set; }
        public string Course { get; set; }
        public string Subject { get; set; }
        public string TopicCovered { get; set; }
        public string PlatformUsed { get; set; }
        public string ClassTakenBy { get; set; }
        public string DateTime {
            set
            {
                datetime = value;
            }
        }
        public string LectureLink { get; set; }
        public int Duration { get; set; }
        public string PostClassNotes { get; set; }
        public string AssignmentReceived { get; set; }
        public string AssignmentSubmitted { get; set; }
        public string TestAttended { get; set; }
        public string DailySelfActivity { get; set; }
        public string Remarks { get; set; }
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
