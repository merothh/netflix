.class public Lorg/xbill/DNS/WireParseException;
.super Ljava/io/IOException;
.source "WireParseException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/WireParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 29
    return-void
.end method
