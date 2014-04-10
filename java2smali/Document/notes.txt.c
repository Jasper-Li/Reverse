Instruction
1. javac HelloWorld.java
2. dx --dex --output=HelloWorld.dex HelloWorld.class
3. java -jar baksmali.jar -a 19 -o SmaliOut HelloWorld.dex

Section1
1. HelloWorld
	(1)sget-object vx, field_id	// read object field reference field id into vx
2. large
	(1)move-result-object vAA
	// Move the object result of the most recent invoke-kind into the indicated register. This must be done as the instruction immediately after an invoke-kind whose result is not be be ignored; anywhere else is invalid.


	.prologue 指定了代码的初始位置。
