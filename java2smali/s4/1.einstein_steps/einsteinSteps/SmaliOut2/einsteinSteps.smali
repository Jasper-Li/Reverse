.class public LeinsteinSteps;
.super Ljava/lang/Object;
.source "einsteinSteps.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GCD(II)I
    .registers 3

    .prologue
    .line 47
    :goto_0
    if-eqz p1, :cond_7

    .line 49
    rem-int v0, p0, p1

    move p0, p1

    move p1, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_7
    return p0
.end method

.method private static LCM(II)I
    .registers 4

    .prologue
    .line 61
    mul-int v0, p0, p1

    invoke-static {p0, p1}, LeinsteinSteps;->GCD(II)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private static getArray(III)[I
    .registers 6

    .prologue
    .line 70
    new-array v1, p2, [I

    .line 72
    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 73
    mul-int v2, p0, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 75
    :cond_e
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 7
    const/4 v0, 0x6

    new-array v3, v0, [LFormular;

    .line 9
    new-instance v0, LFormular;

    invoke-direct {v0, v5, v1}, LFormular;-><init>(II)V

    aput-object v0, v3, v6

    .line 10
    new-instance v0, LFormular;

    invoke-direct {v0, v4, v5}, LFormular;-><init>(II)V

    aput-object v0, v3, v1

    .line 11
    new-instance v0, LFormular;

    invoke-direct {v0, v7, v4}, LFormular;-><init>(II)V

    aput-object v0, v3, v5

    .line 12
    new-instance v0, LFormular;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v7}, LFormular;-><init>(II)V

    aput-object v0, v3, v4

    .line 13
    new-instance v0, LFormular;

    const/4 v2, 0x6

    const/4 v4, 0x5

    invoke-direct {v0, v2, v4}, LFormular;-><init>(II)V

    aput-object v0, v3, v7

    .line 14
    const/4 v0, 0x5

    new-instance v2, LFormular;

    const/4 v4, 0x7

    invoke-direct {v2, v4, v6}, LFormular;-><init>(II)V

    aput-object v2, v3, v0

    .line 16
    aget-object v0, v3, v6

    move-object v2, v0

    move v0, v1

    .line 17
    :goto_3b
    const/4 v4, 0x6

    if-ge v0, v4, :cond_47

    .line 18
    aget-object v4, v3, v0

    invoke-static {v2, v4}, LeinsteinSteps;->mergeTwoFormulars(LFormular;LFormular;)LFormular;

    move-result-object v2

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 20
    :cond_47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "The result is an integer: %d*i + %d (i=0, 1, 2...)\n"

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, v2, LFormular;->divisor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v2, v2, LFormular;->remainder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 21
    return-void
.end method

.method private static mergeTwoFormulars(LFormular;LFormular;)LFormular;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v4, LFormular;

    invoke-direct {v4}, LFormular;-><init>()V

    .line 99
    iget v0, p0, LFormular;->divisor:I

    iget v2, p1, LFormular;->divisor:I

    invoke-static {v0, v2}, LeinsteinSteps;->LCM(II)I

    move-result v0

    iput v0, v4, LFormular;->divisor:I

    .line 100
    iget v0, v4, LFormular;->divisor:I

    iget v2, p0, LFormular;->divisor:I

    div-int/2addr v0, v2

    .line 101
    iget v2, p0, LFormular;->divisor:I

    iget v3, p0, LFormular;->remainder:I

    invoke-static {v2, v3, v0}, LeinsteinSteps;->getArray(III)[I

    move-result-object v5

    .line 105
    iget v0, v4, LFormular;->divisor:I

    iget v2, p1, LFormular;->divisor:I

    div-int/2addr v0, v2

    .line 106
    iget v2, p1, LFormular;->divisor:I

    iget v3, p1, LFormular;->remainder:I

    invoke-static {v2, v3, v0}, LeinsteinSteps;->getArray(III)[I

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 111
    :goto_2c
    array-length v3, v5

    if-ge v0, v3, :cond_3d

    move v3, v1

    .line 113
    :goto_30
    array-length v7, v6

    if-ge v3, v7, :cond_3b

    .line 117
    aget v7, v5, v0

    aget v8, v6, v3

    if-ne v7, v8, :cond_40

    .line 118
    aget v2, v5, v0

    .line 125
    :cond_3b
    if-eqz v2, :cond_49

    .line 128
    :cond_3d
    iput v2, v4, LFormular;->remainder:I

    .line 130
    return-object v4

    .line 121
    :cond_40
    aget v7, v5, v0

    aget v8, v6, v3

    if-lt v7, v8, :cond_3b

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 111
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method private static printArray([I)V
    .registers 5

    .prologue
    .line 83
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_27

    .line 84
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 86
    return-void
.end method
