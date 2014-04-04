.class public Lprint_start12;
.super Ljava/lang/Object;
.source "print_start12.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "********** Menu Choose **********"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "1. print Hello World!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "2. print I love Java!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "3. print Java is easy!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "4. print nothing."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "********** Menu Choose **********"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Select an option (1, 2, 3, 4)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 28
    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 29
    packed-switch v0, :pswitch_data_60

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Wrong input!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :goto_46
    :pswitch_46
    return-void

    .line 32
    :pswitch_47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hello World!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 35
    :pswitch_4f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "I love Java!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 38
    :pswitch_57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java is easy!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 29
    nop

    :pswitch_data_60
    .packed-switch 0xc
        :pswitch_47
        :pswitch_4f
        :pswitch_57
        :pswitch_46
    .end packed-switch
.end method
