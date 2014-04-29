/**
 * Input a student's score, then print its level. Implement it using switch and if statement.
 * This is the if statement.
 * 
 * 90+ A
 * 80+ B
 * 70+ C
 * 60+ D
 * 60- failed the test.
 *
 * @version 1.0 2014-04-29
 * @author Jasper Li
 */
import java.util.*;

public class ScoreLevel
{
	public static void main(String[] args)
	{
		System.out.println("Input a student's score (an integer).");
		Scanner in = new Scanner (System.in);
		int score = in.nextInt();

		if(score <0 || score >100)
			System.out.println("Wrong input.");
		else
		{
			StringBuilder builder = new StringBuilder();
			if(score >= 90 )
				builder.append('A');
			else if (score >= 80)
				builder.append('B');
			else if (score >= 70)
				builder.append('C');
			else if (score >= 60)
				builder.append('D');
			else 
				builder.append("examination failed!");

			String result=builder.toString();
			System.out.printf("The result is \'%s\'.\n ", result);
		}// of if (score<0 || score>100)
	}//end of public static void main
}

