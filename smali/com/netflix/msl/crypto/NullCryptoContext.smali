.class public Lcom/netflix/msl/crypto/NullCryptoContext;
.super Ljava/lang/Object;
.source "NullCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0

    .prologue
    .line 40
    return-object p1
.end method

.method public encrypt([B)[B
    .locals 0

    .prologue
    .line 32
    return-object p1
.end method

.method public sign([B)[B
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public unwrap([B)[B
    .locals 0

    .prologue
    .line 56
    return-object p1
.end method

.method public verify([B[B)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public wrap([B)[B
    .locals 0

    .prologue
    .line 48
    return-object p1
.end method
