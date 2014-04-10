.class public Lprint_digit;
.super Ljava/lang/Object;
.source "print_digit.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 10
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 12
    const/16 v1, 0x16b6

    .line 1
    const/4 v0, 0x0

    .line 29
    :goto_6
    rem-int/lit8 v4, v1, 0xa

    .line 30
    div-int/lit8 v2, v1, 0xa

    .line 31
    add-int/lit8 v1, v0, 0x1

    aput v4, v3, v0 # array element assignment: v3[v0] = v4;

    .line 32
    if-nez v2, :cond_40

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "the digit of n are: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 35
    add-int/lit8 v0, v1, -0x1

    :goto_19
    if-lez v0, :cond_38

    .line 37
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
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 39
    :cond_38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(I)V

    .line 40
    return-void

    :cond_40
    move v0, v1

    move v1, v2

    goto :goto_6
.end method
