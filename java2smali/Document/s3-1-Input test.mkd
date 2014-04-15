### Exceptions in smali format
It uses **.annotation** to demonstrate **throw Exception**

**1. java code**  

	public static void main(String[] args) throws IOException
	{  
		...
	}

**2. smali format**  

	.method public static main([Ljava/lang/String;)V
		.registers 5
		.annotation system Ldalvik/annotation/Throws;
			value = {
				Ljava/io/IOException;
			}
		.end annotation

		...

	.end method
