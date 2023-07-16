/*
This program enables users to calculate their age
by providing their date of birth.
*/

using System;

public class Program {
    public static void Main() {

        // take DOB input from user
        Console.WriteLine("Enter your date of birth (dd/mm/yyyy)");
        Console.Write("dd: ");
        string dd = Console.ReadLine();
        Console.Write("mm: ");
        string mm = Console.ReadLine();
        Console.Write("yyyy: ");
        string yyyy = Console.ReadLine();

        // parse string to datetime
        if (DateTime.TryParse($"{dd}/{mm}/{yyyy}", out DateTime dob)){
            
            // check if date is in future
            if (dob > DateTime.Now) {
                Console.WriteLine("Invalid date. It is a future date.");
                return;
            }
            int date = Convert.ToInt32(dd);
            int month = Convert.ToInt32(mm);
            int year = Convert.ToInt32(yyyy);

            // validate date
            if (date < 1 || date > 31) {
                Console.WriteLine("Invalid date. 'dd' must be greater than or equal to 1 and less than or equal to 31.");
                return;
            }
            // validate month
            if (month < 1 || month > 12) {
                Console.WriteLine("Invalid date. 'mm' must be greater than or equal to 1 and less than or equal to 12");
                return;
            }
            // validate year
            if (year < 1900 || year > DateTime.Now.Year) {
                Console.WriteLine("Invalid date. 'mm' must be greater than or equal to 1 and less than or equal to 12");
                return;
            }

            // calculate age if DOB is valid
            TimeSpan age = DateTime.Now - dob;
            int years = (int)(age.Days / 365);
            int months = (int)((age.Days % 365) / 30);
            int days = (int)(age.Days % 30);

            // console age
            Console.WriteLine($"You are {years} years, {months} months and {days} days old.");
        
        } else {
            Console.WriteLine("Invalid date format.");
        }         
    }
}
