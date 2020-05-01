.class public final Lo/by;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bA;


# static fields
.field private static final c:[B


# instance fields
.field private a:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lo/by;->c:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x32t
        0x6bt
        0x6ft
        0x6ft
        0x42t
        0x6ft
        0x62t
        0x69t
        0x65t
        0x76t
        0x32t
        0x48t
        0x61t
        0x69t
    .end array-data
.end method

.method constructor <init>(Lo/ds;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/by;->d(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ESN can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([B[B[BI)[B
    .locals 2

    .line 120
    new-instance v0, Lo/afU;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lo/afU;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 121
    new-instance v1, Lo/afQ;

    invoke-direct {v1, p0, p1, p2}, Lo/afQ;-><init>([B[B[B)V

    invoke-virtual {v0, v1}, Lo/afU;->a(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 122
    new-array p0, p3, [B

    const/4 p1, 0x0

    .line 123
    invoke-virtual {v0, p0, p1, p3}, Lo/afU;->b([BII)I

    return-object p0
.end method

.method protected static b()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/GCM/NoPadding"

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lo/by;->c:[B

    const-string v1, "netflix-device-bound-store-key"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p1, v0, v1, v2}, Lo/by;->a([B[B[BI)[B

    move-result-object p1

    .line 52
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lo/by;->a:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public d([B)[B
    .locals 6

    .line 90
    invoke-static {}, Lo/by;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 95
    array-length v2, p1

    array-length v3, v1

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 98
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    array-length v3, v1

    array-length v5, v2

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {p1, v3, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 104
    iget-object v1, p0, Lo/by;->a:Ljavax/crypto/SecretKey;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 105
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B)[B
    .locals 5

    .line 58
    invoke-static {}, Lo/by;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0xc

    new-array v2, v2, [B

    .line 68
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 73
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 74
    iget-object v3, p0, Lo/by;->a:Ljavax/crypto/SecretKey;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 78
    array-length v0, v2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 79
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v1, v2

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
