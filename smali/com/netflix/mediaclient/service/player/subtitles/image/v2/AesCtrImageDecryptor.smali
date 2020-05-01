.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCtrImageDecryptor;
.super Ljava/lang/Object;
.source "AesCtrImageDecryptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt([B[B[B)[B
    .locals 4

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v2, "AES/CTR/NoPadding"

    const-string/jumbo v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decrypt([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;Ljava/lang/String;I)[B
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "AesCtrImageDecryptor::decrypt: starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getIV()[B

    move-result-object v0

    array-length v2, v0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "AesCtrImageDecryptor:: IV is 8 bytes long, we need 16 bytes."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x10

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getIV()[B

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getIV()[B

    move-result-object v4

    aget-byte v4, v4, v0

    aput-byte v4, v2, v0

    add-int/lit8 v4, v0, 0x8

    aput-byte v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_1
    invoke-static {v3, p1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCtrImageDecryptor;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AesCtrImageDecryptor:: IV is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " bytes long, we need 16 bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
