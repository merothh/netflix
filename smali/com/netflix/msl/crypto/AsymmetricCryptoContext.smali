.class public abstract Lcom/netflix/msl/crypto/AsymmetricCryptoContext;
.super Ljava/lang/Object;
.source "AsymmetricCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# static fields
.field protected static final NULL_OP:Ljava/lang/String; = "nullOp"


# instance fields
.field private final algo:Ljava/lang/String;

.field protected final id:Ljava/lang/String;

.field private final params:Ljava/security/spec/AlgorithmParameterSpec;

.field protected final privateKey:Ljava/security/PrivateKey;

.field protected final publicKey:Ljava/security/PublicKey;

.field private final transform:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->id:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->privateKey:Ljava/security/PrivateKey;

    .line 80
    iput-object p3, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->publicKey:Ljava/security/PublicKey;

    .line 81
    iput-object p4, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->params:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    iput-object p6, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->algo:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 7

    .prologue
    .line 137
    const-string/jumbo v0, "nullOp"

    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object p1

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    const/4 v1, 0x0

    .line 144
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v3, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {v2, v0, v3}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 148
    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENVELOPE_KEY_ID_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 155
    :catch_0
    move-exception v0

    .line 157
    :try_start_1
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    :cond_3
    throw v0

    .line 152
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 153
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->privateKey:Ljava/security/PrivateKey;

    iget-object v5, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->params:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 154
    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getCiphertext()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-result-object p1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 160
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 163
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PRIVATE_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 184
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 164
    :catch_3
    move-exception v0

    .line 166
    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 184
    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 167
    :catch_4
    move-exception v0

    .line 169
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 184
    :catchall_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 170
    :catch_5
    move-exception v0

    .line 172
    :try_start_7
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 184
    :catchall_5
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 173
    :catch_6
    move-exception v0

    .line 175
    :try_start_8
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 184
    :catchall_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 176
    :catch_7
    move-exception v0

    .line 178
    :try_start_9
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 184
    :catchall_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1

    .line 179
    :catch_8
    move-exception v0

    .line 181
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 184
    :catchall_8
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1

    :catchall_9
    move-exception v0

    goto/16 :goto_1
.end method

.method public encrypt([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string/jumbo v0, "nullOp"

    iget-object v2, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object p1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no public key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 99
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->publicKey:Ljava/security/PublicKey;

    iget-object v4, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->params:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 100
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 103
    new-instance v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    iget-object v3, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->toJSONString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-result-object p1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->transform:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    :cond_3
    throw v0

    .line 107
    :catch_1
    move-exception v0

    .line 109
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 110
    :catch_2
    move-exception v0

    .line 112
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 113
    :catch_3
    move-exception v0

    .line 115
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 127
    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 116
    :catch_4
    move-exception v0

    .line 118
    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when encrypting"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 127
    :catchall_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 119
    :catch_5
    move-exception v0

    .line 121
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 127
    :catchall_5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 122
    :catch_6
    move-exception v0

    .line 124
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 127
    :catchall_6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_7
    move-exception v0

    goto :goto_1
.end method

.method public sign([B)[B
    .locals 3

    .prologue
    .line 210
    const-string/jumbo v0, "nullOp"

    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->algo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 221
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no private key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->algo:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 217
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 218
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 221
    new-instance v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v1, v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid signature algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PRIVATE_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 226
    :catch_2
    move-exception v0

    .line 227
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unwrap([B)[B
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public verify([B[B)Z
    .locals 3

    .prologue
    .line 236
    const-string/jumbo v0, "nullOp"

    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->algo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no public key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->parse([B)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->algo:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 246
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 247
    invoke-virtual {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getSignature()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid signature algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_1
    move-exception v0

    .line 251
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 252
    :catch_2
    move-exception v0

    .line 253
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :catch_3
    move-exception v0

    .line 255
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wrap([B)[B
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method
