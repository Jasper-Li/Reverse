/**
 * This program recieve a character from 0-9, translate into digit, and put in screen.
 * @version 1.0 2014-04-10
 * @author Jasper Li
 */

import java.io.*;
public class InputTest
{
	public static void main(String[] args) throws IOException
	{
		System.out.println("Input a digit.");
		int a = System.in.read();
		System.out.printf("a = %d\n", a);
		a = a - 48;
		System.out.println("a = " + a);

	}
}
