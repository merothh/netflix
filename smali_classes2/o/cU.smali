.class public Lo/cU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dc;


# instance fields
.field private d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lo/cU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Crypto provider can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lo/dc$TaskDescription;)V
    .locals 1

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CachedCryptoManager, releaseCryptoSession should not be called yet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CachedCryptoManager, decrypt should not be called yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lo/dc$ActionBar;)Lo/dc$TaskDescription;
    .locals 1

    .line 79
    new-instance v0, Lo/dc$TaskDescription;

    invoke-direct {v0}, Lo/dc$TaskDescription;-><init>()V

    .line 80
    iput-object p1, v0, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    return-object v0
.end method

.method public c(Lo/ahD;[BLo/dc$ActionBar;Lo/dc$ActionBar;)Lo/dc$TaskDescription;
    .locals 0

    .line 73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CachedCryptoManager, updateKeyResponse should not be called yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
    .locals 0

    .line 58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CachedCryptoManager, decrypt should not be called yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B
    .locals 0

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CachedCryptoManager, sign should not be called yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z
    .locals 0

    .line 53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CachedCryptoManager, verify should not be called yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lo/ahD;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CachedCryptoManager, getKeyRequestData should not be called yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/cU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method public y_()V
    .locals 0

    return-void
.end method
