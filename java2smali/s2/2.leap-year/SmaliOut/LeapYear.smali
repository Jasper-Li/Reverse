.class public LLeapYear;
.super Ljava/lang/Object;
.source "LeapYear.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Input a year to test if it is a leap year."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/util/Scanner;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 19
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    .line 22
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_33 # test if a year of v2 is 4X  
		#if not it is a common year.
    .line 31
    :cond_18
    :goto_18
    if-ne v0, v1, :cond_3f #if-ne vx, vy, target # jump to target if vx != vy.
							#:cond_3f, print this is a common year.
    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a leap year."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    :goto_32
    return-void

    .line 24
    :cond_33
    rem-int/lit8 v3, v2, 0x64 # v2 is 4X, test if v2 is 100X 

    if-eqz v3, :cond_39 #if v2 is 4X , is 100X, continue to test.

	#if v2 is 4X & is not 100X, it is a leap year.
    move v0, v1

    .line 25
    goto :goto_18

    .line 26
    :cond_39
    rem-int/lit16 v3, v2, 0x190 #test if v2 is 400X, when v2 is 4X & 100X 

    if-nez v3, :cond_18 #if v2 is not 400X, when is 4X & 100X, it is common year.

	#if v2 is 400X, it is a leap year.
    move v0, v1

    .line 27
    goto :goto_18

    .line 34
    :cond_3f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a common year."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_32
.end method
