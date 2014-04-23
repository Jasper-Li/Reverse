.class public LdaffodilNumber;
.super Ljava/lang/Object;
.source "daffodilNumber.java"


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
    const/16 v0, 0x64

    :goto_2
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_23

    .line 12
    div-int/lit8 v1, v0, 0x64

    .line 13
    div-int/lit8 v2, v0, 0xa

    rem-int/lit8 v2, v2, 0xa

    .line 14
    rem-int/lit8 v3, v0, 0xa

    .line 16
    mul-int v4, v1, v1

    mul-int/2addr v1, v4

    mul-int v4, v2, v2

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    mul-int v2, v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_20

    .line 17
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(I)V

    .line 10
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_23
    return-void
.end method
