.class public LreadCharacter;
.super Ljava/lang/Object;
.source "readCharacter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Input characters, \'E\' or \'e\' to quit."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 46
    :goto_17
    const/16 v2, 0x65

    if-eq v0, v2, :cond_3a

    const/16 v2, 0x45

    if-eq v0, v2, :cond_3a

    .line 48
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Read: %c\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_34} :catch_36

    move-result v0

    goto :goto_17

    .line 54
    :catch_36
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    :cond_3a
    return-void
.end method
