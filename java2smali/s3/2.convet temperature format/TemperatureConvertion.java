/**
 * The program convert Temperataure from Fahrenheit format into Celsius format.
 * The conversion formulae is C = 5 * (F - 32) / 9
 * input is an interger.
 * output is with 2 decimal places.
 *
 * @version 1.0 2014-04-10
 * @author Jasper Li
 */
import java.util.*;
public class TemperatureConvertion 
{
	public static void main(String[] args)
	{
		System.out.println("Input an integer for temperature using fahrenheit format.");
		Scanner in = new Scanner (System.in);
		int temp_f = in.nextInt();

		float temp_c = (float) 5 * (temp_f - 32 ) / 9;

		System.out.printf("temp_f = %d, temp_c = %.2f\n", temp_f, temp_c);
	}
}
