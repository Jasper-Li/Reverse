### 1.Exercise
Print a Multiplication-Table of 1 ~ 9 like below.
>1\*1=1    
1\*2=2  2\*2=4    
1\*3=3  2\*3=6  3\*3=9    
1\*4=4  2\*4=8  3\*4=12 4\*4=16   
1\*5=5  2\*5=10 3\*5=15 4\*5=20 5\*5=25   
1\*6=6  2\*6=12 3\*6=18 4\*6=24 5\*6=30 6\*6=36   
1\*7=7  2\*7=14 3\*7=21 4\*7=28 5\*7=35 6\*7=42 7\*7=49   
1\*8=8  2\*8=16 3\*8=24 4\*8=32 5\*8=40 6\*8=48 7\*8=56 8\*8=64   
1\*9=9  2\*9=18 3\*9=27 4\*9=36 5\*9=45 6\*9=54 7\*9=63 8\*9=72 9\*9=81   
###2. Java Code
	public class PrintMultiplicationTable
	{
		public static void main(String[] args)
		{
		for(int i=1; i<=9; i++)
		{
			for(int j=1; j<=i; j++)
				System.out.printf("%1d*%1d=%-2d ", j, i, j*i);
			System.out.println();
		}
		}
	}
###3. Smali Code of *main method*

	.method public static main([Ljava/lang/String;)V
		.registers 9

		.prologue
		const/4 v1, 0x1

		.line 20
		move v2, v1

		:goto_2
		const/16 v0, 0x9

		if-gt v2, v0, :cond_35

		move v0, v1

		.line 22
		:goto_7
		if-gt v0, v2, :cond_2c

		.line 23
		sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

		const-string v4, "%1d*%1d=%-2d "

		const/4 v5, 0x3

		new-array v5, v5, [Ljava/lang/Object;

		const/4 v6, 0x0

		invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

		move-result-object v7

		aput-object v7, v5, v6

		invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

		move-result-object v6

		aput-object v6, v5, v1

		const/4 v6, 0x2

		mul-int v7, v0, v2

		invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

		move-result-object v7

		aput-object v7, v5, v6

		invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

		.line 22
		add-int/lit8 v0, v0, 0x1

		goto :goto_7

		.line 24
		:cond_2c
		sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

		invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

		.line 20
		add-int/lit8 v0, v2, 0x1

		move v2, v0

		goto :goto_2

		.line 26
		:cond_35
		return-void
	.end method
### 3. Key Words
1. const/4 vA, #+B  
Move the given literal value (sign-extended to 32 bits) into the specified register.
2. mul-int vAA, vBB, vCC  
vAA = vBB * vCC

### 4. Flow Chart
![](file:////media/code/github/reverse/java2smali/Document/sources/s3-3-flowchart.jpg)


