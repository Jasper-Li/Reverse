## s2-1 switch format 
### 1. excercise 
打印如下信息：（只要求显示所示格式即可）  
\*\*\*\*\*\*\*\*\*模拟菜单选择程序\*\*\*\*\*\*\*\*\*  
请选择要使用的功能：  
1.   输出 Hello World!  
2.   输出 I Love Java!  
3.   输出 Java is Easy!  
4.   不做任何输出!  
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

### 2. Java Code
	import java.util.*;
	/**
	 * The program prints the info below.
	 * ********** Menu Choose **********
	 * select The function to use
	 * 1. print Hello World!
	 * 2. print I love Java!
	 * 3. print Java is easy!
	 * 4. print nothing.
	 * *********************************
	 * @version 1.0 2014-04-02
	 * @author Jasper Li
	 */

	public class print
	{
		public static void main(String[] args) //Static methods are methods that do not operate on objects.
		{
			System.out.println("********** Menu Choose **********");
			System.out.println("1. print Hello World!");
			System.out.println("2. print I love Java!");
			System.out.println("3. print Java is easy!");
			System.out.println("4. print nothing."); 
			System.out.println("********** Menu Choose **********");
			System.out.print("Select an option (1, 2, 3, 4)\n");
		
		Scanner in = new Scanner (System.in);
		int choice = in.nextInt();
		switch(choice)
		{
			case 1:
				System.out.println("Hello World!");
				break;
			case 2:
				System.out.println("I love Java!");
				break;
			case 3:
				System.out.println("Java is easy!");
				break;
			case 4:
				break;
			default:
				System.out.println("Wrong input!");
				break;
		}
	
	}
}

### 3. switch-case statement in smali format
path: ./smaliout/print.smali  
#### 3.1 original format
    .line 29
    packed-switch v0, :pswitch_data_60

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Wrong input!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :goto_46
    :pswitch_46
    return-void

    .line 32
    :pswitch_47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hello World!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 35
    :pswitch_4f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "I love Java!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 38
    :pswitch_57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java is easy!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 29
    nop

    :pswitch_data_60
    .packed-switch 0x1 # Hear is 0x1, when case starts as 1, 2, 3, 4.
        :pswitch_47
        :pswitch_4f
        :pswitch_57
        :pswitch_46
    .end packed-switch

(1) packed-switch vAA, +BBBBBBBB
Jump to a new instruction based on the value in the given register, using a table of offsets corresponding to each value in a particular integral range, or fall through to the next instruction if there is no match.
vAA: a register to test
+BB: signed "branch" offset to table data pseudo-instruction 

(2) If I change the value of **case** in **switch-case** to 11-14, the code is below.  
**file: ./print_start12.java**  
	
	switch(choice)
	{
	case 12:
			System.out.println("Hello World!");
			break;
	case 13:
			System.out.println("I love Java!");
			break;
	case 14:
			System.out.println("Java is easy!");
			break;
	case 15:
		break;
	default:
		System.out.println("Wrong input!");
		break;
	}

**file: ./smaliout_start12/print_start12.smali**  

    :pswitch_data_60
    .packed-switch 0xc #Hear is 0xc = 12, when case starts as 12, 13, 14, 15
        :pswitch_47
        :pswitch_4f
        :pswitch_57
        :pswitch_46
    .end packed-switch

(3) If I change the value of **case** in **switch-case** to 1, 13, 5, 4, the code is below.  
**file: ./print/random.java**  

	case 1:
		System.out.println("Hello World!");
		break;
	case 13:
		System.out.println("I love Java!");
		break;
	case 5:
		System.out.println("Java is easy!");
		break;
	case 4:
		break;
	default:
		System.out.println("Wrong input!");
		break;

**file: smaliout_random/print_random.smali**  

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_47
        0x4 -> :sswitch_46
        0x5 -> :sswitch_57
        0xd -> :sswitch_4f
    .end sparse-switch
