.class public LSumOfEvenNumber;
.super Ljava/lang/Object;
.source "SumOfEvenNumber.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    const/4 v0, 0x0

    .line 14
    :goto_3
    const/16 v3, 0x2710

    if-gt v0, v3, :cond_c

    .line 16
    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 17
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 20
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    return-void
.end method
