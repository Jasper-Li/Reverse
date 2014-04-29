.class public LPascalsTriangle;
.super Ljava/lang/Object;
.source "PascalsTriangle.java"


# static fields
.field private static ElementLength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DigitLength(I)I
    .registers 2

    .prologue
    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_1

    return v0
.end method

.method private static binomialCoefficient(II)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    new-array v3, p0, [I

    new-array v4, p0, [I

    move v0, v1

    :goto_6
    if-ge v0, p0, :cond_f

    aput v1, v4, v0

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_10
    if-ge v2, p0, :cond_38

    move v0, v1

    :goto_13
    if-gt v0, v2, :cond_2a

    packed-switch v0, :pswitch_data_3c

    add-int/lit8 v5, v0, -0x1

    aget v5, v3, v5

    aget v6, v3, v0

    add-int/2addr v5, v6

    aput v5, v4, v0

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :pswitch_24
    const/4 v5, 0x1

    aput v5, v4, v0

    aput v5, v3, v0

    goto :goto_21

    :cond_2a
    move v0, v1

    :goto_2b
    if-gt v0, v2, :cond_34

    aget v5, v4, v0

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_38
    aget v0, v4, p1

    return v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_24
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Input lines(max 34):"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Scanner;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v2, v3, 0x2

    invoke-static {v0, v2}, LPascalsTriangle;->binomialCoefficient(II)I

    move-result v0

    invoke-static {v0}, LPascalsTriangle;->DigitLength(I)I

    move-result v0

    sput v0, LPascalsTriangle;->ElementLength:I

    new-array v4, v3, [I

    new-array v5, v3, [I

    move v0, v1

    :goto_26
    if-ge v0, v3, :cond_2f

    aput v1, v5, v0

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_2f
    move v2, v1

    :goto_30
    if-ge v2, v3, :cond_78

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v0, v2

    :goto_35
    if-lez v0, :cond_41

    sget v6, LPascalsTriangle;->ElementLength:I

    const/16 v7, 0x23

    invoke-static {v6, v7}, LPascalsTriangle;->printChar(IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_41
    move v0, v1

    :goto_42
    if-gt v0, v2, :cond_65

    packed-switch v0, :pswitch_data_7a

    add-int/lit8 v6, v0, -0x1

    aget v6, v4, v6

    aget v7, v4, v0

    add-int/2addr v6, v7

    aput v6, v5, v0

    :goto_50
    aget v6, v5, v0

    invoke-static {v6}, LPascalsTriangle;->printInt(I)V

    sget v6, LPascalsTriangle;->ElementLength:I

    const/16 v7, 0x20

    invoke-static {v6, v7}, LPascalsTriangle;->printChar(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :pswitch_5f
    const/4 v6, 0x1

    aput v6, v5, v0

    aput v6, v4, v0

    goto :goto_50

    :cond_65
    move v0, v1

    :goto_66
    if-gt v0, v2, :cond_6f

    aget v6, v5, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_6f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_30

    :cond_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5f
    .end packed-switch
.end method

.method private static printChar(IC)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    move v0, v1

    :goto_2
    if-ge v0, p0, :cond_17

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%c"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method private static printInt(I)V
    .registers 6

    .prologue
    invoke-static {p0}, LPascalsTriangle;->DigitLength(I)I

    move-result v0

    sget v1, LPascalsTriangle;->ElementLength:I

    sub-int v0, v1, v0

    const/16 v1, 0x3d

    invoke-static {v0, v1}, LPascalsTriangle;->printChar(IC)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method
