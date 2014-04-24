/**
 * Description: Calculate the summary of even-numbers from 1 to 10000, and print the result. Respectively, using do-while, while and for statement.
 * This is for statement.
 * @version 1.0 2014-4-24
 * @author Jasper Li
 */
public class SumOfEvenNumber
{
	public static void main(String[] args)
	{
		int sum = 0;
		for(int num=0; num <= 10000; num +=2)
			sum += num;

		System.out.println("The result is " + sum);
	}
}
