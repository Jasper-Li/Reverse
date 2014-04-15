.class public LPrintMultiplicationTable;
.super Ljava/lang/Object;
.source "PrintMultiplicationTable.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

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
