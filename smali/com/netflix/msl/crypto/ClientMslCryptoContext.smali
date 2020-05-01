.class public Lcom/netflix/msl/crypto/ClientMslCryptoContext;
.super Ljava/lang/Object;
.source "ClientMslCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0

    .prologue
    .line 43
    return-object p1
.end method

.method public encrypt([B)[B
    .locals 0

    .prologue
    .line 35
    return-object p1
.end method

.method public sign([B)[B
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public unwrap([B)[B
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Unwrap is unsupported by the MSL token crypto context."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verify([B[B)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public wrap([B)[B
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Wrap is unsupported by the MSL token crypto context."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
