.class public LEncryptCharacter;
.super Ljava/lang/Object;
.source "EncryptCharacter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Input a line characters:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    :cond_7
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 19
    const/16 v1, 0x61

    if-lt v0, v1, :cond_15

    const/16 v1, 0x76

    if-le v0, v1, :cond_1d

    :cond_15
    const/16 v1, 0x41

    if-lt v0, v1, :cond_35

    const/16 v1, 0x56

    if-gt v0, v1, :cond_35

    .line 20
    :cond_1d
    add-int/lit8 v0, v0, 0x4

    .line 23
    :cond_1f
    :goto_1f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "%c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 24
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 26
    return-void

    .line 21
    :cond_35
    const/16 v1, 0x77

    if-lt v0, v1, :cond_3d

    const/16 v1, 0x7a

    if-le v0, v1, :cond_45

    :cond_3d
    const/16 v1, 0x57

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1f

    .line 22
    :cond_45
    add-int/lit8 v0, v0, -0x16

    goto :goto_1f
.end method
