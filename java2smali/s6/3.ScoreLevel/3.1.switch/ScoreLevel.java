/**
 * Input a student's score, then print its level. Implement it using switch and if statement.
 * This is the switch statement.
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
			switch(score/10)
			{
				case 9:
				case 10:
					builder.append('A');
					break;
				case 8:
					builder.append('B');
					break;
				case 7:
					builder.append('C');
					break;
				case 6:
					builder.append('D');
					break;
				default:
					builder.append("examination failed!");
					break;
			}
			String result=builder.toString();
			System.out.printf("The result is \'%s\'.\n ", result);
		}// of if (score<0 || score>100)
	}//end of public static void main
}

