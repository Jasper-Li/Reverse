/**
 * Description: This programe encrypts the input character, by adding its ascii code value for 4.
 * If inputs are 'abc', outputs are 'efg'.
 * @version 1.0 2014-04-29
 * @author Jasper Li
 */
import java.io.IOException;
public class EncryptCharacter
{
	public static void main(String[] args) throws IOException
	{
		System.out.println("Input a line characters:");
		
		int byteData = 0;
		
		do 
		{
			byteData=System.in.read();
			if(byteData >='a' && byteData<='v' || byteData >='A' && byteData<='V')	
				byteData += 4;
			else if(byteData>='w' &&byteData<='z' || byteData >='W' &&byteData<='Z')
				byteData -=22;
			System.out.printf("%c", byteData);
		}while(byteData!='\n');
		
	}
}
