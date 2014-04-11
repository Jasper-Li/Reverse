.class public LTemperatureConvertion;
.super Ljava/lang/Object;
.source "TemperatureConvertion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Input an integer for temperature using fahrenheit format."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 19
    const/high16 v1, 0x40a00000 #0b 0100 0000 1010 0000 0000 0000 0000 0000
	# const/high16 vAA, #+BBBB0000 
	# vAA = signed +BBBB


    add-int/lit8 v2, v0, -0x20

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41100000 #0b 0100 0001 0001 0000 0000 000 0000 0000

    div-float/2addr v1, v2

    .line 21
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "temp_f = %d, temp_c = %.2f\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 22
    return-void
.end method
