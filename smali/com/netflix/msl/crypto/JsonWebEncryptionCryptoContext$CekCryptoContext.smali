.class public abstract Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;
.super Ljava/lang/Object;
.source "JsonWebEncryptionCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# instance fields
.field private final algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    .line 148
    return-void
.end method


# virtual methods
.method getAlgorithm()Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    return-object v0
.end method

.method public sign([B)[B
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public unwrap([B)[B
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public verify([B[B)Z
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public wrap([B)[B
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method
