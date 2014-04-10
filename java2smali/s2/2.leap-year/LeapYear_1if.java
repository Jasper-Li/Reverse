import java.util.*;
/**
 * Check if a year is leap year.
 * http://en.wikipedia.org/wiki/Leap_year#Algorithm
 *
 * @author Jasper Li
 * @version 1.0 2014-04-04
 */



public class LeapYear_1if
{
	public static void main (String[] args)
	{

		System.out.println("Input a year to test if it is a leap year.");
		Scanner in = new Scanner (System.in);
		int year = in.nextInt();
		

		if (( year % 4 == 0) && ( year %100 !=0 || year % 400 == 0))
			System.out.println(year + " is a leap year.");
		else 
			System.out.println(year + " is a common year.");

	}
}
