.class public LPrimeNumber;
.super Ljava/lang/Object;
.source "PrimeNumber.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    .line 25
    const/16 v0, 0x64

    move v4, v0

    move v1, v2

    :goto_6
    const/16 v0, 0xc8

    if-gt v4, v0, :cond_47

    .line 29
    const/4 v0, 0x2

    :goto_b
    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-gt v0, v5, :cond_4f

    .line 30
    rem-int v5, v4, v0

    if-nez v5, :cond_44

    move v0, v2

    .line 36
    :goto_18
    if-ne v0, v3, :cond_4d

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 39
    add-int/lit8 v0, v1, 0x1

    .line 40
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_3f

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 25
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_6

    .line 29
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 44
    :cond_47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 45
    return-void

    :cond_4d
    move v0, v1

    goto :goto_3f

    :cond_4f
    move v0, v3

    goto :goto_18
.end method
