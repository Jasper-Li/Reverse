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
		/*
		System.out.println("Input lines:");
		Scanner in = new Scanner(System.in);
		int line = in.nextInt();
		*/
		int line=30;
		int maxNum = binomialCoefficient(line-1, line/2);
		ElementLength = DigitLength(maxNum);
		
		int[] tmp= new int[line];
		int[] now = new int[line];
		for(int i=0; i<line; i++)
			tmp[i] = now[i] = 0;


		for(int i=0; i<line; i++)
		{
			for(int space=line-1-i; space >0; space --)
				printChar(ElementLength, ' ');

			for(int offset=0; offset<= i; offset++)
			{
				switch(offset)
				{
					case 0:
//					case i:
						tmp[offset] = now[offset] =1;
						break;
					default:
						now[offset] = tmp[offset -1] + tmp[offset];
						break;
				}
				printInt(now[offset]);
				printChar(ElementLength,' ');
			}

			for(int j=0; j<=i; j++)
				tmp[j] = now[j];
			
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
private static int binomialCoefficient(int line, int k)
	{
		int[] tmp = new int[line];
		int[] now = new int[line];
		for(int i=0; i<line; i++)
			tmp[i] = now[i] =0;

		for(int i=0; i<line; i++)
		{
			for(int off=0; off<= i; off++)
			{
				switch (off)
				{
					case 0:
						tmp[off] = now[off] =1;
						break;
					default:
						now[off] = tmp[off-1] + tmp[off];
						break;
				}

			}

			for(int j=0; j<=i; j++)
				tmp[j] = now[j];
		}
		return now[k];	
	}
}
