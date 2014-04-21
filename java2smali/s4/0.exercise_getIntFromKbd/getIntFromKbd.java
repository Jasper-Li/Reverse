/**
 * This program reads an interger from keyboard, then print it out.
 * @version 1.0 2014-04-16
 * @author Jasper Li
 */

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

public class getIntFromKbd
{
	public static void main(String[] args)
	{
		System.out.println("Input a digit:");
		try
		{
			BufferedReader bf = new BufferedReader(new InputStreamReader(System.in) );

			String str = bf.readLine();
			int num = Integer.parseInt(str); // convert string into an int.
			System.out.println("num = " + num);
		}
		catch (IOException ex)
		{
			ex.printStackTrace();
		}
	}
}
		
