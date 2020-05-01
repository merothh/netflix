.class public Lorg/bouncycastle/crypto/tls/TlsFatalAlert;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x31be09cba4aa0800L


# instance fields
.field protected alertCause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->alertCause:Ljava/lang/Throwable;

    return-object v0
.end method
