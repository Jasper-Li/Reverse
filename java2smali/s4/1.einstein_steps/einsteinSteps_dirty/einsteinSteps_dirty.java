public class einsteinSteps_dirty
{
	public static void main(String[] args)
	{
		int length = 0xffff;
		int test = 0;
		int i=77;
		for(; i<= length; i=i+7)
		
		{
			test ++ ;
				if( i % 3 == 2 )
				if( i % 4 == 3 )
				if( i % 5 == 4 )
				if( i % 6 == 5 )
				if( i % 7 == 0 )
				{
					System.out.println("steps is " + i + ", test times is " + test);
					//break;
				}
		}

		if (i > length)
			System.out.println("can not found in " + length);
	}
}
