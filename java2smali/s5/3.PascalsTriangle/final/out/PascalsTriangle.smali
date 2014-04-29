.class public LPascalsTriangle;
.super Ljava/lang/Object;
.source "PascalsTriangle.java"


# static fields
.field private static ElementLength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DigitLength(I)I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 71
    div-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_1

    .line 72
    return v0
.end method

.method private static binomialCoefficient(II)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 89
    new-array v3, p0, [I

    .line 90
    new-array v4, p0, [I

    move v0, v1

    .line 91
    :goto_6
    if-ge v0, p0, :cond_f

    .line 92
    aput v1, v4, v0

    aput v1, v3, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v2, v1

    .line 94
    :goto_10
    if-ge v2, p0, :cond_38

    move v0, v1

    .line 96
    :goto_13
    if-gt v0, v2, :cond_2a

    .line 98
    packed-switch v0, :pswitch_data_3c

    .line 104
    add-int/lit8 v5, v0, -0x1

    aget v5, v3, v5

    aget v6, v3, v0

    add-int/2addr v5, v6

    aput v5, v4, v0

    .line 96
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 101
    :pswitch_24
    const/4 v5, 0x1

    aput v5, v4, v0

    aput v5, v3, v0

    goto :goto_21

    :cond_2a
    move v0, v1

    .line 110
    :goto_2b
    if-gt v0, v2, :cond_34

    .line 111
    aget v5, v4, v0

    aput v5, v3, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 94
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 113
    :cond_38
    aget v0, v4, p1

    return v0

    .line 98
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

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Input lines(max 34):"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/Scanner;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 26
    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    .line 29
    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v2, v3, 0x2

    invoke-static {v0, v2}, LPascalsTriangle;->binomialCoefficient(II)I

    move-result v0

    .line 30
    invoke-static {v0}, LPascalsTriangle;->DigitLength(I)I

    move-result v0

    sput v0, LPascalsTriangle;->ElementLength:I

    .line 32
    new-array v4, v3, [I

    .line 33
    new-array v5, v3, [I

    move v0, v1

    .line 34
    :goto_26
    if-ge v0, v3, :cond_2f

    .line 35
    aput v1, v5, v0

    aput v1, v4, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_2f
    move v2, v1

    .line 38
    :goto_30
    if-ge v2, v3, :cond_78

    .line 40
    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v0, v2

    :goto_35
    if-lez v0, :cond_41

    .line 41
    sget v6, LPascalsTriangle;->ElementLength:I

    const/16 v7, 0x23

    invoke-static {v6, v7}, LPascalsTriangle;->printChar(IC)V

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_41
    move v0, v1

    .line 43
    :goto_42
    if-gt v0, v2, :cond_65

    .line 45
    packed-switch v0, :pswitch_data_7a

    .line 52
    add-int/lit8 v6, v0, -0x1

    aget v6, v4, v6

    aget v7, v4, v0

    add-int/2addr v6, v7

    aput v6, v5, v0

    .line 55
    :goto_50
    aget v6, v5, v0

    invoke-static {v6}, LPascalsTriangle;->printInt(I)V

    .line 56
    sget v6, LPascalsTriangle;->ElementLength:I

    const/16 v7, 0x20

    invoke-static {v6, v7}, LPascalsTriangle;->printChar(IC)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 49
    :pswitch_5f
    const/4 v6, 0x1

    aput v6, v5, v0

    aput v6, v4, v0

    goto :goto_50

    :cond_65
    move v0, v1

    .line 59
    :goto_66
    if-gt v0, v2, :cond_6f

    .line 60
    aget v6, v5, v0

    aput v6, v4, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 62
    :cond_6f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_30

    .line 64
    :cond_78
    return-void

    .line 45
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

    .line 76
    move v0, v1

    :goto_2
    if-ge v0, p0, :cond_17

    .line 77
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%c"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    :cond_17
    return-void
.end method

.method private static printInt(I)V
    .registers 6

    .prologue
    .line 82
    invoke-static {p0}, LPascalsTriangle;->DigitLength(I)I

    move-result v0

    .line 83
    sget v1, LPascalsTriangle;->ElementLength:I

    sub-int v0, v1, v0

    const/16 v1, 0x3d

    invoke-static {v0, v1}, LPascalsTriangle;->printChar(IC)V

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 86
    return-void
.end method
