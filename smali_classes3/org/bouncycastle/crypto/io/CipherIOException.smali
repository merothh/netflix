.class public Lorg/bouncycastle/crypto/io/CipherIOException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
