.class public LHelloWorld;
.super Ljava/lang/Object;

#To assemble and run this. note the run command should have access to /data/dalvik-cache
#java -jar /the/path/of/smali.jar -o classes.dex HelloWorld.smali
#zip HelloWorld.zip classes.dex
#adb push HelloWorld.zip /sdcard
#adb root
#adb shell dalvikvm -cp /sdcard/HelloWorld.zip HelloWord
#
.method public static main([Ljava/lang/String;)V
	.registers 2

	sget-object v0,Ljava/lang/System;->out:Ljava/io/PrintStream;
	const-string v1, "Hello World from Jasper Li.\n"
	invoke-virtual {v0, v1},Ljava/io/PrintStream;->println(Ljava/lang/String;)V

	return-void
.end method
