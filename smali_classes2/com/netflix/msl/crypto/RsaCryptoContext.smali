.class public Lcom/netflix/msl/crypto/RsaCryptoContext;
.super Lo/agN;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;)V
    .locals 8

    .line 66
    sget-object p1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->b:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 67
    invoke-virtual {p1, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "nullOp"

    if-eqz p1, :cond_0

    const-string p1, "RSA/ECB/PKCS1Padding"

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->a:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    invoke-virtual {p1, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RSA/ECB/OAEPPadding"

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_1
    sget-object p1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->a:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 68
    invoke-virtual {p1, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    move-object v6, p1

    sget-object p1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->c:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 69
    invoke-virtual {p1, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "SHA256withRSA"

    :cond_3
    move-object v7, v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 66
    invoke-direct/range {v1 .. v7}, Lo/agN;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V

    .line 70
    sget-object p1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->e:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    if-eq p5, p1, :cond_4

    return-void

    .line 71
    :cond_4
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Wrap/unwrap unsupported."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
