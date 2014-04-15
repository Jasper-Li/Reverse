This program demonstrate how to use loop statement in Java code, and how it works in smali format.

### 1. Excercese
Initial n = 5814. then print every digit of n. Just like this:
> The digits of n are 5, 8, 1, 4

### 2. Java code
  
	/**
	 * This program print every digit of of integer 5814.
	 * @version 1.0 2014-04-10
	 * @author Jasper Li
	 */
	public class print_digit
	{
		public static void main(String[] args)
		{
		int[] digit_array = new int [4];

		int div = 5814;
		int i = 0;
		int rem;

		// section 1: get every digit
		do
		{
			rem = div % 10;
			div = div / 10;
			digit_array[i++] = rem;
		} while(div != 0);
	
		// section 2: print every digit
		System.out.print("the digit of n are: ");
		for (i--; i > 0; i--)
		{
			System.out.print(digit_array[i] + ", ");
		}
		System.out.println(digit_array[i]);
		}
	}

### 3. get every digit in smali format
**(1) smali code and comments**

    .prologue
    .line 10
    const/4 v0, 0x4 		# initial array to v3 with 4 element
    new-array v3, v0, [I

    .line 12
    const/16 v1, 0x16b6		# initial v1 = 5814 (dec)

    .line 1
    const/4 v0, 0x0			# initial the index v0 to 0

    .line 29
    :goto_6
    rem-int/lit8 v4, v1, 0xa	# remainder = v1 % 10

    .line 30
    div-int/lit8 v2, v1, 0xa	# quotient = v1 / 10

    .line 31
    add-int/lit8 v1, v0, 0x1	# index v0 plus 1, and save result into v1

    aput v4, v3, v0 			# array element assignment: v3[v0] = v4;

    .line 32
    if-nez v2, :cond_40			# if quotient is not zero, meaning that v1 still holds digits.

	# other codes
	....

    :cond_40
    move v0, v1			# put index back into v0

    move v1, v2			# put quotient into v1 to next loop.

    goto :goto_6

**(2) pseudo-code of the smali code**  
Actually it can help me to understand the meaning of the code, by commentting the samli code. I like to translate into the pseudo-code I'm familar.

	int[] v3 = new int[4];
	int v1 = 5814;		//devidend number 
	int v0 = 0;			// index v0

	:goto_6
	v4 = v1 % 10;		// v4 is remander
	v2 = v1 / 10;		// v2 is quotient
	v1 = v0 ++;			// v1 =  index v0 ++ 
	v3 [v0] = v4;		// v3[index v0 ] = remainder

	if(v2 != 0)			// if quatient != 0
	{
		v0 = v1;		// index v0 = v1 
		v1 = v2;		// devided number is devided by 10
		goto goto_6;	// loop back
	}
	// end   


### 3. section2 print every digit
(1) java code section  
file: ./print_digit.java  

	for (i--; i > 0; i--)
	{
		system.out.print(digit_array[i] + ", ");
	}
	system.out.println(digit_array[i]);


**(2) smali code section and comment**  
file: ./SmaliOut/print_digit.smali

    .line 35
    add-int/lit8 v0, v1, -0x1  #index v0 = v1 -- 

    :goto_19
    if-lez v0, :cond_38		#if v0 <=0, goto cond_38, means that the for loop is over.

	# The below is excuted when v0 >0. START
    
	
	.line 37
	# System.out.print( v3[v0] + ", ");

	sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
	new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    aget v4, v3, v0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v4, ", "
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 35
	# index v0 = v0--;
   	add-int/lit8 v0, v0, -0x1

    goto :goto_19	#back to the loop condition test if v0 <=0 


    .line 39
	# v0 = 0, when excution comes here, then print the last element v3[0]
	# System.out.println(v3[0]);
    
	:cond_38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    aget v0, v3, v0 	# v0 = v3[v0]
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(I)V

    .line 40
    return-void

