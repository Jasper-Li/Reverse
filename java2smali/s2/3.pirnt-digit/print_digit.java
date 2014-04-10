/**
 * This program print every digit of of integer 5814.
 * @version 1.0 2014-04-10
 * @author Jasper Li
 */
public class print_digit
{
	public static void main(String[] args)
	{
	int[] digit_array = new int [4];

	int div = 5814;
	int i = 0;
/*
	int rem = div % 10;
		div = div / 10;

	while(rem != 0 || div !=0)
	{
		digit_array[i++] = rem;

		rem = div % 10 ;
		div = div / 10 ;
	}
*/
	int rem;
	do
	{
		rem = div % 10;
		div = div / 10;
		digit_array[i++] = rem;
	} while(div != 0);
	
	System.out.print("the digit of n are: ");
	for (i--; i > 0; i--)
	{
		System.out.print(digit_array[i] + ", ");
	}
	System.out.println(digit_array[i]);
	}
}
