/**
 * Description: Print Pascal's Triangle, given line numbers.
// (1) Binomial 
// (2) Coefficient 
 *
 * Algorithm of this one, whine line = 20, It doesn't work;
 * @version 1.0 2014-04-24
 * @author Jasper Li
 */
import java.util.*;

public class PascalsTriangle
{
	private static int ElementLength;

	public static void main(String[] args)
	{
		System.out.println("Input lines:");
		Scanner in = new Scanner(System.in);
		int line = in.nextInt();

		int maxNum = binomialCoefficient(line-1, line/2);
		ElementLength = DigitLength(maxNum);
		

		for(int i=0; i<line; i++)
		{
			for(int space=line-1-i; space >0; space --)
				printChar(ElementLength, ' ');

			for(int offset=0; offset<= i; offset++)
			{
				int numElement =binomialCoefficient(i, offset);
				
				printInt(numElement);
				printChar(ElementLength,' ');
			}
			
			System.out.println();
		}
	}
private static int DigitLength(int n)
{
	int length=0;
	do
	{
		length ++;
	}while (( n /= 10) != 0);
	return length;
}
private static void printChar(int length,char ch)
{
	for(int i=0; i<length; i++)
		System.out.printf("%c", ch);

}
private static void printInt(int n)
{
	int spaceLength = DigitLength(n);
	printChar(ElementLength - spaceLength,'*');
	System.out.printf("%d", n);

}
private static int binomialCoefficient(int n, int k)
	{
		int result = 1;
		if (k != 0 && n!=0)
			result = binomialCoefficient(n-1, k-1) + binomialCoefficient(n-1, k);
		else 
			result = 1;

		return result;

		/* x*int dividend =1;
		int divisor = 1;

		for (int i =1; i<=k; i++)
		{
			dividend *=n+1-i;
			divisor *= i;
		}

		return dividend/divisor;
		*/

	}
}
