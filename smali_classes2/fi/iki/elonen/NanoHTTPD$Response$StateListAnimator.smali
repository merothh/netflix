.class Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;
.super Ljava/io/FilterOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1422
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1448
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;->out:Ljava/io/OutputStream;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1430
    invoke-virtual {p0, v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1435
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 1442
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%x\r\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1443
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1444
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response$StateListAnimator;->out:Ljava/io/OutputStream;

    const-string p2, "\r\n"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
