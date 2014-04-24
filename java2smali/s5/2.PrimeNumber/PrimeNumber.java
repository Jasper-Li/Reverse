/**
 * Description: Print all the prime nubmer ranged from 100 to 200.
 * 
 * Algorithm: Check if N is prime Integer
 * boolean check(int N)
 * {
 * 	boolean flag = faulse;
 * 	for(i=2; i<= sqrt(N); i++)
 * 		if(N % i == 0)
 *		{
 *			flag = true;
 *			break;
 *		}
 *  return flag;
 * }
 *
 * @version 1.0 2014-04-24
 * @author Jasper Li
 */
public class PrimeNumber
{
	public static void main(String[] args)
	{
		int num = 0;
		for(int i=100; i<= 200; i++)
		{
			boolean flag = true;
			
			for(int j=2; j<= (int) Math.sqrt(i); j++)
					if( i % j ==0)
					{
						flag = false;
						break;
					}
			
			if(flag == true)
			{
				System.out.printf(i + " ");
				num ++;
				if(num % 5 == 0)
					System.out.println();
			}
		}
		System.out.println();
	}
}
