.class public Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;
.super Ljava/lang/Object;
.source "JsonWebEncryptionCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# static fields
.field private static final A128_GCM_AT_LENGTH:I = 0x80

.field private static final A128_GCM_IV_LENGTH:I = 0xc

.field private static final A128_GCM_KEY_LENGTH:I = 0x10

.field private static final A256_GCM_AT_LENGTH:I = 0x80

.field private static final A256_GCM_IV_LENGTH:I = 0xc

.field private static final A256_GCM_KEY_LENGTH:I = 0x20

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "alg"

.field private static final KEY_CIPHERTEXT:Ljava/lang/String; = "ciphertext"

.field private static final KEY_ENCRYPTED_KEY:Ljava/lang/String; = "encrypted_key"

.field private static final KEY_ENCRYPTION:Ljava/lang/String; = "enc"

.field private static final KEY_HEADER:Ljava/lang/String; = "header"

.field private static final KEY_INITIALIZATION_VECTOR:Ljava/lang/String; = "initialization_vector"

.field private static final KEY_INTEGRITY_VALUE:Ljava/lang/String; = "integrity_value"

.field private static final KEY_RECIPIENTS:Ljava/lang/String; = "recipients"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

.field private final cekCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

.field private final format:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->cekCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;->getAlgorithm()Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    iput-object p3, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->format:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 2

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public sign([B)[B
    .locals 2

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public unwrap([B)[B
    .locals 13

    new-instance v5, Ljava/lang/String;

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "initialization_vector"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "ciphertext"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v3, "recipients"

    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "header"

    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "encrypted_key"

    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "integrity_value"

    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v11, v0

    move-object v0, v2

    move-object v2, v11

    move-object v12, v1

    move-object v1, v3

    move-object v3, v12

    :goto_0
    invoke-static {v4}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v8

    if-eqz v6, :cond_0

    array-length v9, v6

    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    array-length v9, v7

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    array-length v9, v8

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    array-length v9, v3

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    array-length v9, v2

    if-nez v9, :cond_3

    :cond_0
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, v5}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v5, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "\\."

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, v5}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    aget-object v4, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v2, v0, v1

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v6, 0x4

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    move-object v11, v0

    move-object v0, v2

    move-object v2, v11

    move-object v12, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/String;

    sget-object v9, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_1
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6, v5}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "alg"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    :try_start_2
    invoke-static {v9}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->fromString(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    :try_start_3
    const-string/jumbo v10, "enc"

    invoke-virtual {v6, v10}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    :try_start_4
    invoke-static {v6}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    iget-object v10, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    invoke-virtual {v10, v9}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v9, v6}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->JWE_ALGORITHM_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, v5}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v9, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v5, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v6, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :try_start_7
    iget-object v5, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->cekCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v5, v7}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v5

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v0, v6}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x10

    const/16 v0, 0x80

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_1
    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    array-length v5, v5

    if-eq v5, v0, :cond_8

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content encryption key length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A256GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v0, v6}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x20

    const/16 v0, 0x80

    move v11, v0

    move v0, v1

    move v1, v11

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWE_ALGORITHM:Lcom/netflix/msl/MslError;

    invoke-virtual {v6}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_8
    array-length v0, v2

    const/16 v5, 0x10

    if-eq v0, v5, :cond_9

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "authentication tag length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v5, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v5, Lorg/bouncycastle/crypto/params/AEADParameters;

    sget-object v6, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v5, v7, v1, v8, v4}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_8
    array-length v1, v3

    array-length v4, v2

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v4, 0x0

    array-length v3, v3

    array-length v5, v2

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->getOutputSize(I)I

    move-result v2

    new-array v4, v2, [B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->processBytes([BII[BI)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7

    return-object v4

    :catch_5
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNWRAP_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNWRAP_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNWRAP_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify([B[B)Z
    .locals 2

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public wrap([B)[B
    .locals 11

    const/16 v5, 0x80

    const/16 v4, 0xc

    const/4 v10, 0x0

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONStringer;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONStringer;->object()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "alg"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "enc"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONWriter;->endObject()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v0, v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->cekCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v0

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v1, Lorg/bouncycastle/crypto/params/AEADParameters;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v3, v5, v4, v2}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_1
    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->processBytes([BII[BI)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_2

    array-length v0, v4

    add-int/lit8 v0, v0, -0x10

    invoke-static {v4, v10, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v1, v0

    array-length v2, v4

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebEncryptionCryptoContext$Format:[I

    iget-object v3, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->format:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-virtual {v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWE_SERIALIZATION:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->format:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->JWE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A256GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v0, v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWE_ALGORITHM:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->enc:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->WRAP_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid ciphertext not expected when encrypting."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    :try_start_2
    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v4, "header"

    invoke-virtual {v3, v4, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v4, "encrypted_key"

    invoke-virtual {v3, v4, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v4, "integrity_value"

    invoke-virtual {v3, v4, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v3, "recipients"

    invoke-virtual {v1, v3, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v2, "initialization_vector"

    invoke-virtual {v1, v2, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v2, "ciphertext"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->JWE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
