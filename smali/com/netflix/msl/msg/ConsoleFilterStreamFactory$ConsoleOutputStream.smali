.class Lcom/netflix/msl/msg/ConsoleFilterStreamFactory$ConsoleOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ConsoleFilterStreamFactory.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->write(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintStream;->write([BII)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    return-void
.end method
