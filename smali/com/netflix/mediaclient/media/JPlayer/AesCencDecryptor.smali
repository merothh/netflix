.class public Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;
.super Ljava/lang/Object;
.source "AesCencDecryptor.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final IV_KEY_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AseCencDecryptor"

.field private static final TRANSFORMATION:Ljava/lang/String; = "AES/CTR/NoPadding"


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->mCipher:Ljavax/crypto/Cipher;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->mKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v0, "AseCencDecryptor"

    const-string/jumbo v1, "fail to get Cipher"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "AseCencDecryptor"

    const-string/jumbo v1, "KeySpec has IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private copyWorkingBuffer(Ljava/nio/ByteBuffer;[B[I[IZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move v2, v0

    :goto_0
    array-length v3, p4

    if-ge v0, v3, :cond_1

    aget v3, p3, v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    aget v3, p4, v0

    if-eqz p5, :cond_0

    invoke-virtual {p1, p2, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/nio/ByteBuffer;[B[I[I)Z
    .locals 10

    const/4 v6, 0x1

    const/16 v3, 0x10

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AseCencDecryptor"

    const-string/jumbo v2, "input is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    array-length v0, p3

    if-eqz v0, :cond_3

    array-length v0, p4

    if-eqz v0, :cond_3

    array-length v0, p3

    array-length v2, p4

    if-lt v0, v2, :cond_3

    array-length v0, p2

    if-eq v0, v3, :cond_5

    array-length v0, p2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "AseCencDecryptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iv length and byte map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    array-length v0, p2

    if-ge v0, v3, :cond_6

    new-array v0, v3, [B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_6
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->mCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->mKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move v7, v1

    :goto_1
    array-length v0, p4

    if-ge v1, v0, :cond_7

    aget v0, p4, v1

    add-int/2addr v0, v7

    add-int/lit8 v1, v1, 0x1

    move v7, v0

    goto :goto_1

    :cond_7
    new-array v2, v7, [B

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->copyWorkingBuffer(Ljava/nio/ByteBuffer;[B[I[IZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->mCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v7, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->copyWorkingBuffer(Ljava/nio/ByteBuffer;[B[I[IZ)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "AseCencDecryptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decrypt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", finished in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " us"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_8
    :goto_2
    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AseCencDecryptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to decrypt, InvalidKeyException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AseCencDecryptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to decrypt, InvalidAlgorithmParameterException."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v0, "AseCencDecryptor"

    const-string/jumbo v1, "fail to decrypt, output buffer is too short. "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_3
    const-string/jumbo v1, "AseCencDecryptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to decrypt, doFinal failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3
.end method
