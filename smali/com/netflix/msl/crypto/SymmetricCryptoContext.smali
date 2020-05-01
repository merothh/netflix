.class public Lcom/netflix/msl/crypto/SymmetricCryptoContext;
.super Ljava/lang/Object;
.source "SymmetricCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# static fields
.field private static final AESKW_AIV:[B

.field private static final AESKW_ALGO:Ljava/lang/String; = "AES"

.field private static final AESKW_BLOCK_SIZE:I = 0x8

.field private static final AESKW_TRANSFORM:Ljava/lang/String; = "AES/ECB/NoPadding"

.field private static final AES_ALGO:Ljava/lang/String; = "AES"

.field private static final AES_IV_SIZE:I = 0x10

.field private static final AES_TRANSFORM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final HMAC_SHA256_ALGO:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field protected final ctx:Lcom/netflix/msl/util/MslContext;

.field protected final encryptionKey:Ljavax/crypto/SecretKey;

.field protected final id:Ljava/lang/String;

.field protected final signatureKey:Ljavax/crypto/SecretKey;

.field protected final wrappingKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->AESKW_AIV:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encryption key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AESCmac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encryption key must be an HmacSHA256 or AESCmac key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encryption key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    iput-object p4, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    iput-object p5, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private static lsb(I[B)[B
    .locals 4

    array-length v0, p1

    sub-int v1, v0, p0

    new-array v2, p0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v3, v1, v0

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static msb(I[B)[B
    .locals 2

    const/4 v1, 0x0

    new-array v0, p0, [B

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static xor([BJ)V
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x38

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x30

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x28

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x3

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x20

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x18

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x5

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x10

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x8

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    aget-byte v1, p0, v0

    int-to-long v2, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 5

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no encryption/decryption key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {v1, v0, v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENVELOPE_KEY_ID_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INSUFFICIENT_CIPHERTEXT:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getCiphertext()[B

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getIv()[B

    move-result-object v1

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt([B)[B
    .locals 5

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no encryption/decryption key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    array-length v0, p1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    iget-object v3, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->toJSONString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when encrypting"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sign([B)[B
    .locals 3

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "No signature key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v1, v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AESCmac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/macs/CMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {v2, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/CMac;->update([BII)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/macs/CMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/crypto/macs/CMac;->doFinal([BI)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid MAC algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unsupported algorithm."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unwrap([B)[B
    .locals 10

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no wrap/unwrap key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "AES/ECB/NoPadding"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    array-length v0, v2

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x8

    div-int/lit8 v1, v0, 0x8

    const/4 v0, 0x5

    move v3, v0

    move-object v0, v2

    :goto_0
    if-ltz v3, :cond_3

    move-object v2, v0

    move v0, v1

    :goto_1
    const/4 v6, 0x1

    if-lt v0, v6, :cond_2

    mul-int v6, v1, v3

    add-int/2addr v6, v0

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->xor([BJ)V

    add-int/lit8 v6, v0, -0x1

    mul-int/lit8 v6, v6, 0x8

    mul-int/lit8 v7, v0, 0x8

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    array-length v7, v2

    array-length v8, v6

    add-int/2addr v7, v8

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    const/4 v8, 0x0

    array-length v2, v2

    array-length v9, v6

    invoke-static {v6, v8, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/16 v2, 0x8

    invoke-static {v2, v6}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->msb(I[B)[B

    move-result-object v2

    const/16 v7, 0x8

    invoke-static {v7, v6}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->lsb(I[B)[B

    move-result-object v6

    const/4 v7, 0x0

    add-int/lit8 v8, v0, -0x1

    mul-int/lit8 v8, v8, 0x8

    const/16 v9, 0x8

    invoke-static {v6, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v0, v2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->AESKW_AIV:[B

    invoke-static {v0, v1}, Lcom/netflix/msl/util/MslUtils;->safeEquals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v5

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    return-object v5

    :cond_4
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNWRAP_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initial value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify([B[B)Z
    .locals 4

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "No signature key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->parse([B)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "HmacSHA256"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getSignature()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/msl/util/MslUtils;->safeEquals([B[B)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "AESCmac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    new-instance v2, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v3, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v3, v2}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/macs/CMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x0

    array-length v2, p1

    invoke-virtual {v3, p1, v0, v2}, Lorg/bouncycastle/crypto/macs/CMac;->update([BII)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/macs/CMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/crypto/macs/CMac;->doFinal([BI)I
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unsupported algorithm."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid MAC algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wrap([B)[B
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no wrap/unwrap key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->AESKW_AIV:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :try_start_0
    const-string/jumbo v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, v1

    div-int/lit8 v6, v4, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x6

    if-ge v4, v3, :cond_3

    move-object v3, v0

    move v0, v2

    :goto_1
    if-gt v0, v6, :cond_2

    add-int/lit8 v7, v0, -0x1

    mul-int/lit8 v7, v7, 0x8

    mul-int/lit8 v8, v0, 0x8

    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    array-length v8, v3

    array-length v9, v7

    add-int/2addr v8, v9

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    const/4 v9, 0x0

    array-length v3, v3

    array-length v10, v7

    invoke-static {v7, v9, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const/16 v3, 0x8

    invoke-static {v3, v7}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->msb(I[B)[B

    move-result-object v3

    mul-int v8, v6, v4

    add-int/2addr v8, v0

    int-to-long v8, v8

    invoke-static {v3, v8, v9}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->xor([BJ)V

    const/16 v8, 0x8

    invoke-static {v8, v7}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->lsb(I[B)[B

    move-result-object v7

    const/4 v8, 0x0

    add-int/lit8 v9, v0, -0x1

    mul-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    invoke-static {v7, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v3

    goto :goto_0

    :cond_3
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is no padding"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when encrypting"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
