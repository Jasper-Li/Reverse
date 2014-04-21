import java.util.*;

public class einsteinSteps
{
	public static void main(String[] args)
	{
		Formular[] param = new Formular[6];

		param[0] = new Formular(2,1);
		param[1] = new Formular(3,2);
		param[2] = new Formular(4,3);
		param[3] = new Formular(5,4);
		param[4] = new Formular(6,5);
		param[5] = new Formular(7,0);
		
		Formular result = param[0];
		for(int i = 1; i<6;i++)
			result=mergeTwoFormulars(result, param[i]);

		System.out.printf("The result is an integer: %d*i + %d (i=0, 1, 2...)\n", result.divisor, result.remainder);
	}
	/*
	public static void testMerge()
	{
		Formular f1 = new Formular(5, 3);
		Formular f2 = new Formular(3, 2);

		Formular result = mergeTwoFormulars(f1, f2);
		System.out.printf("The result is an integer: %d*i + %d (i=0, 1, 2...)\n", result.divisor, result.remainder);
	}
	public static void testLCM()
	{
		System.out.println("Input 2 number");
		Scanner in = new Scanner(System.in);
		int a = in.nextInt();
		int b = in.nextInt();

		System.out.println("The greatest common divisor is " + GCD(a, b));
		System.out.println("The least common multiple is " + LCM(a, b));
	}
	*/
	/**
	 * Get the greatest common divisor.
	 */
	private static int GCD(int dividend, int divisor)
	{
		while(divisor != 0)
		{
		int temp = dividend % divisor;
		dividend = divisor;
		divisor = temp;

		}
		return dividend;
	}
	/**
	 * Get the least common mutliple.
	 */
	private static int LCM(int num1, int num2)
	{
		return num1 * num2 / GCD(num1, num2);
	}

	/**
	 * Get Array to match the needs. If A % B = C, get an array of A with given length.
	 */
	
	private static int[] getArray(int dividend, int divisor, int length)
	{
		int[] array = new int[length];
		
		for( int i=0; i< array.length; i++)
			array[i] = divisor + dividend * i;

		return array;
	}

	/**
	 * Print an integer array.
	 */
	private static void printArray(int[] array)
	{
		for (int i=0; i<array.length; i++)
			System.out.println(i+1 +": " +  array[i]);
		System.out.println();
	}

	/**
	 * Merge 2 fomulars into 1 formular, just like below.
	 * If 
	 * 1. x % 3 = 2
	 * 2. x % 5 = 3
	 * Then x % 15 = 8 .
	 */
	private static Formular mergeTwoFormulars(Formular f1, Formular f2)
	{
		Formular result = new Formular();

		result.divisor = LCM(f1.divisor, f2.divisor);
		int length = result.divisor / f1.divisor;
		int[]array1 = getArray(f1.divisor, f1.remainder, length);
	//	System.out.printf("divisor=%d, remainder=%d, array is below.\n", f1.divisor, f1.remainder);
	//	printArray(array1);

		length = result.divisor / f2.divisor;
		int[]array2 = getArray(f2.divisor, f2.remainder, length);
	//	System.out.printf("divisor=%d, remainder=%d, array is below.\n", f2.divisor, f2.remainder);
	//	printArray(array2);

		int remainder=0;
		for(int i=0; i<array1.length; i++)
		{
			for(int j=0; j<array2.length; j++)
			{
//				System.out.printf("test if %d == %d\n", array1[i], array2[j]);
				
				if(array1[i] == array2[j])
				{		remainder = array1[i];
						break;
				}
				if(array1[i] < array2[j])
					break;
			}

			if(remainder !=0 )
				break;
		}
		result.remainder =remainder;

		return result;
	
	}
}

/**
 *  A % B = C.
 * The class describe B and C. so A is 
 * A = B * i + C (i = 0, 1, 2, ...)
 */
class Formular
{
	int divisor;
	int remainder;

	public Formular(int d, int r)
	{
		divisor = d;
		remainder = r;
	}

	public Formular()
	{
		divisor = 0;
		remainder = 0;
	}
}

