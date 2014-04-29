/**
 * Get the indicating number for year, month and day, then print the day number within the current year.
 * @version 1.0 2014-04-29
 * @author Jasper Li
 */
import java.util.*;

public class DayInYear
{
	static int day;
	static int month;
	static int year;
//	static boolean flag_leap_year;

	public static void getDate()
	{
		System.out.println("Input the Date with the format (year month day)");
		Scanner in = new Scanner(System.in);
		year = in.nextInt();
		month = in.nextInt();
		day = in.nextInt();
	}
	public static void setDate(int y, int m, int d)
	{
		year = y;
		month = m;
		day = d;
	}
	/**
	 * Check if the input date is valid date.
	 * @return returns ture if it is valid, else returns false
	 */
	public static boolean checkDate()
	{
		boolean flag = true;
		
		if(year >= 0)
		{

			if (day < 1)
				flag = false;
			else
				switch(month)
				{
					case 1:
					case 3:
					case 5:
					case 7:
					case 8:
					case 10:
					case 12:
						if(day > 31)
							flag = false;
						break;
					case 4:
					case 6:
					case 9:
					case 11:
						if(day > 30)
							flag = false;
						break;
					case 2:
						if( (year % 4 ==0) && (year %100 != 0) || (year % 400 ==0))
						{//	flag_leap_year = true;
							if(day > 29)
								flag = false;
						}
						else
						{//	flag_leap_year = false;
							if(day > 28)
								flag = false;
						}
						break;
					default:
						flag = false;
				}		// end switch	

		}//end if (year >=0)
		else
			flag = false;

		
		
		if(flag == false)
			System.out.printf("%d, %d, %d: Date input error.\n", year, month, day);
		else
		{
	//		System.out.printf("%d, %d, %d: Date is valid.\n", year, month, day);
		}
		
		return flag;
	}

/*	public static void testCheckDate()
	{
		for (int i=1; i<5;i++)
		for (int j=0; j<14; j++)
		for (int k=0; k<=32; k++)
		{
			setDate(i,j,k);
			checkDate();
		}
	}
*/
	public static int calculateDay()
	{
		// as normal year.
		int sum=0;
		int[] monthDay = new int[]{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30};

		for(int i=1; i<month; i++)
			sum += monthDay[i-1];

		sum += day;

		//if it is a leap year
		if( (year % 4 ==0) && (year %100 != 0) || (year % 400 ==0))
			if(month > 2)
				sum ++;

		return sum;
	}

	public static void main(String[] args)
	{
		getDate();

		if(checkDate() == true)
		{
			System.out.printf("%d, %d, %d: It is the %d day within year %d.\n",year, month, day, calculateDay(), year);
		}
		

	}

}
