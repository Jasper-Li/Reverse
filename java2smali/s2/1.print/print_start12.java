import java.util.*;
/**
 * The program prints the info below.
 * ********** Menu Choose **********
 * select The function to use
 * 1. print Hello World!
 * 2. print I love Java!
 * 3. print Java is easy!
 * 4. print nothing.
 * *********************************
 * @version 1.0 2014-04-02
 * @author Jasper Li
 */

public class print_start12
{
	public static void main(String[] args) //Static methods are methods that do not operate on objects.
	{
		System.out.println("********** Menu Choose **********");
		System.out.println("1. print Hello World!");
		System.out.println("2. print I love Java!");
		System.out.println("3. print Java is easy!");
		System.out.println("4. print nothing."); 
		System.out.println("********** Menu Choose **********");
		System.out.print("Select an option (1, 2, 3, 4)\n");
		
		Scanner in = new Scanner (System.in);
		int choice = in.nextInt();
		switch(choice)
		{
			case 12:
				System.out.println("Hello World!");
				break;
			case 13:
				System.out.println("I love Java!");
				break;
			case 14:
				System.out.println("Java is easy!");
				break;
			case 15:
				break;
			default:
				System.out.println("Wrong input!");
				break;
		}
	
	}
}
