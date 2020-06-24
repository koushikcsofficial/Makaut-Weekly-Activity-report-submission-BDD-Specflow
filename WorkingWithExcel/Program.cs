using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Excel = Microsoft.Office.Interop.Excel;

namespace WorkingWithExcel
{
    class Program
    {
        static void Main(string[] args)
        {
            //Create COM Objects. Create a COM object for everything that is referenced
            Excel.Application xlApp = new Excel.Application();
            Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(@"D:\c# projects\Automation Testing\Makaut Weekly Activity report submission BDD Specflow\WorkingWithExcel\WEEK-13.xlsx");
            StreamWriter sw = new StreamWriter(@"D:\c# projects\Automation Testing\Makaut Weekly Activity report submission BDD Specflow\WorkingWithExcel\values.txt");
            Excel._Worksheet xlWorksheet = xlWorkbook.Sheets[1];
            Excel.Range xlRange = xlWorksheet.UsedRange;

            //int rowCount = xlRange.Rows.Count;
            int colCount = xlRange.Columns.Count;
            Console.WriteLine("Column present:{0} ",colCount);

            //iterate over the rows and columns and print to the console as it appears in the file
            //excel is not zero based!!
            for (int i = 1; i <= 20; i++)
            {
                for (int j = 1; j <= colCount; j++)
                {

                        //new line
                        if (j == 1)
                        {
                            Console.Write("\n");
                            sw.WriteLine("\n");
                            sw.Flush();
                        }

                        //write the value to the console
                        if (xlRange.Cells[i, j] != null && xlRange.Cells[i, j].Value2 != null)
                        {
                            string line = xlRange.Cells[i, j].Value2.ToString();
                            if (line.Contains("\n"))
                            {
                                line = line.Replace("\n", ", ");
                            }
                            line = line.Trim();
                            Console.Write(line + "|");
                            sw.Write(line + "|");
                            sw.Flush();
                        }
                    
                }
            }
            Console.WriteLine("Successfull");
            sw.Close();

            //cleanup
            GC.Collect();
            GC.WaitForPendingFinalizers();

            //rule of thumb for releasing com objects:
            //  never use two dots, all COM objects must be referenced and released individually
            //  ex: [somthing].[something].[something] is bad

            //release com objects to fully kill excel process from running in the background
            Marshal.ReleaseComObject(xlRange);
            Marshal.ReleaseComObject(xlWorksheet);

            //close and release
            xlWorkbook.Close();
            Marshal.ReleaseComObject(xlWorkbook);

            //quit and release
            xlApp.Quit();
            Marshal.ReleaseComObject(xlApp);
        }
    }
}
