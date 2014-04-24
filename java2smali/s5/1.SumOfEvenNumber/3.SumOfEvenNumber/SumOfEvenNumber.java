/**
 * Description: Calculate the summary of even-numbers from 1 to 10000, and print the result. Respectively, using do-while, while and for statement.
 * This is while statement.
 * @version 1.0 2014-4-24
 * @author Jasper Li
 */
public class SumOfEvenNumber
{
	public static void main(String[] args)
	{
		long sum=0;
		int num=0;
		
		while(num <= 10000)
		{
			sum += num;
			num += 2;
		}
	
		System.out.println("The result is " + sum);
	}
}
