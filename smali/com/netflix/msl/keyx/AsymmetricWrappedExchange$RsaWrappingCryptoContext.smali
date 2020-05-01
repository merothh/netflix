.class Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;
.super Lcom/netflix/msl/crypto/AsymmetricCryptoContext;
.source "AsymmetricWrappedExchange.java"


# instance fields
.field private final wrapParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private final wrapTransform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 106
    const-string/jumbo v4, "nullOp"

    const-string/jumbo v6, "nullOp"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode:[I

    invoke-virtual {p5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA wrapping crypto context mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    const-string/jumbo v0, "RSA/ECB/OAEPPadding"

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    .line 110
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 119
    :goto_0
    return-void

    .line 113
    :pswitch_1
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    .line 114
    iput-object v5, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapParams:Ljava/security/spec/AlgorithmParameterSpec;

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public unwrap([B)[B
    .locals 6

    .prologue
    .line 169
    const-string/jumbo v0, "nullOp"

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object p1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_2

    .line 172
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    const/4 v1, 0x0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 177
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapParams:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 178
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
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

    .line 202
    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    :try_start_1
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    :cond_3
    throw v0

    .line 182
    :catch_1
    move-exception v0

    .line 184
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 185
    :catch_2
    move-exception v0

    .line 187
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PRIVATE_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 188
    :catch_3
    move-exception v0

    .line 190
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 202
    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 191
    :catch_4
    move-exception v0

    .line 193
    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 202
    :catchall_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 194
    :catch_5
    move-exception v0

    .line 196
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 202
    :catchall_5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 197
    :catch_6
    move-exception v0

    .line 199
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 202
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

.method public wrap([B)[B
    .locals 6

    .prologue
    .line 126
    const-string/jumbo v0, "nullOp"

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object p1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no public key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    const/4 v1, 0x0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 134
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->publicKey:Ljava/security/PublicKey;

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapParams:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 135
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
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

    .line 159
    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    :try_start_1
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;->wrapTransform:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->resetCipher(Ljava/lang/String;)V

    :cond_3
    throw v0

    .line 139
    :catch_1
    move-exception v0

    .line 141
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 142
    :catch_2
    move-exception v0

    .line 144
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 145
    :catch_3
    move-exception v0

    .line 147
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 148
    :catch_4
    move-exception v0

    .line 150
    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when encrypting"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 159
    :catchall_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 151
    :catch_5
    move-exception v0

    .line 153
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 159
    :catchall_5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 154
    :catch_6
    move-exception v0

    .line 156
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 159
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
