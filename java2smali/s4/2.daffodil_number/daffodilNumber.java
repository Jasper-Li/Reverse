/**
 * print the daffodil number with 3 digits.
 * ABC = A*A*A + B*B*B + C*C*C
 */

public class daffodilNumber
{
	public static void main(String[] args)
	{
		for(int n=100; n<1000; n++)
		{
			int i = n / 100;
			int j = n / 10 % 10;
			int k = n % 10;

			if( n == i*i*i + j*j*j + k*k*k)
				System.out.println(n);
		}
	}
}
