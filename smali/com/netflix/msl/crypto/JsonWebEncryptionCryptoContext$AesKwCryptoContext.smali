.class public Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;
.super Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;
.source "JsonWebEncryptionCryptoContext.java"


# static fields
.field private static final A128_KW_TRANSFORM:Ljava/lang/String; = "AESWrap"


# instance fields
.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    invoke-direct {p0, v0}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;-><init>(Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;)V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->key:Ljavax/crypto/SecretKey;

    .line 336
    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 337
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    invoke-direct {p0, v0}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;-><init>(Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;)V

    .line 321
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Secret key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->key:Ljavax/crypto/SecretKey;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 325
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    const-string/jumbo v0, "AESWrap"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 381
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 382
    const-string/jumbo v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 385
    :catch_1
    move-exception v0

    .line 386
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 387
    :catch_2
    move-exception v0

    .line 388
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt([B)[B
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    const-string/jumbo v0, "AESWrap"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 349
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 352
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 353
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 356
    :catch_1
    move-exception v0

    .line 357
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 358
    :catch_2
    move-exception v0

    .line 359
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid content encryption key provided."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 360
    :catch_3
    move-exception v0

    .line 361
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 362
    :catch_4
    move-exception v0

    .line 363
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v0

    goto :goto_0
.end method
