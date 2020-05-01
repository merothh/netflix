.class public Lorg/xbill/DNS/utils/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"


# static fields
.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct


# instance fields
.field private blockLength:I

.field private digest:Ljava/security/MessageDigest;

.field private ipad:[B

.field private opad:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    iput p2, p0, Lorg/xbill/DNS/utils/HMAC;->blockLength:I

    .line 74
    invoke-direct {p0, p3}, Lorg/xbill/DNS/utils/HMAC;->init([B)V

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown digest algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;I[B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 54
    iput-object p1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    .line 55
    iput p2, p0, Lorg/xbill/DNS/utils/HMAC;->blockLength:I

    .line 56
    invoke-direct {p0, p3}, Lorg/xbill/DNS/utils/HMAC;->init([B)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;[B)V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/security/MessageDigest;I[B)V

    .line 89
    return-void
.end method

.method private init([B)V
    .locals 3

    .prologue
    .line 28
    array-length v0, p1

    iget v1, p0, Lorg/xbill/DNS/utils/HMAC;->blockLength:I

    if-le v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 30
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 32
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/utils/HMAC;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    .line 33
    iget v0, p0, Lorg/xbill/DNS/utils/HMAC;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    .line 34
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    aget-byte v2, p1, v0

    xor-int/lit8 v2, v2, 0x36

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 36
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    aget-byte v2, p1, v0

    xor-int/lit8 v2, v2, 0x5c

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    iget v1, p0, Lorg/xbill/DNS/utils/HMAC;->blockLength:I

    if-ge v0, v1, :cond_2

    .line 39
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    .line 40
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 171
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 172
    return-void
.end method

.method public digestLength()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public sign()[B
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 133
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    return-void
.end method

.method public update([BII)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 114
    return-void
.end method

.method public verify([B)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([BZ)Z

    move-result v0

    return v0
.end method

.method public verify([BZ)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v1

    .line 157
    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 158
    array-length v0, p1

    new-array v0, v0, [B

    .line 159
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
