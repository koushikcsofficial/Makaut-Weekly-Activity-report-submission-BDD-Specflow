using System;
using System.Linq;

namespace ConsoleApp1
{
    class Date
    {
        private string datetime; // field
        public string DateTime   // property
        {
            //get { return name; }
            set { datetime = value; }
        }
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
            string res = new string(datetime.SkipWhile(c => c != '/')
                           .Skip(1)
                           .TakeWhile(c => c != ':')
                           .ToArray()).Trim();
            return res;
        }
        private string GetMinute(string datetime)
        {
            int FirstIndexofSlash = datetime.IndexOf('/');
            return datetime.Substring(FirstIndexofSlash+1);
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

    class Program
    {
        static void Main(string[] args)
        {
            Date myObj = new Date();
            myObj.DateTime = "21.3.20/10.15";
            //19.3.20/2.25-3.15

            Console.WriteLine(myObj.Day);
            Console.WriteLine(myObj.Month);
            Console.WriteLine(myObj.Hour);
            Console.WriteLine(myObj.Minute);
            Console.WriteLine(myObj.TimeOfTheDay);
        }
    }

}
