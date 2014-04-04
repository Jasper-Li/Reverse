import java.util.*;
/**
 * Check if a year is leap year.
 * http://en.wikipedia.org/wiki/Leap_year#Algorithm
 *
 * @author Jasper Li
 * @version 1.0 2014-04-04
 */



public class LeapYear
{
	public static void main (String[] args)
	{

		System.out.println("Input a year to test if it is a leap year.");
		Scanner in = new Scanner (System.in);
		int year = in.nextInt();
		
		boolean flag;
		if( year % 4 != 0 )
			flag = false;
		else if (year % 100 != 0)
			flag = true;
		else if (year % 400 == 0)
			flag = true;
		else
			flag = false;

		if (flag == true)
			System.out.println(year + " is a leap year.");
		else 
			System.out.println(year + " is a common year.");

	}
}
