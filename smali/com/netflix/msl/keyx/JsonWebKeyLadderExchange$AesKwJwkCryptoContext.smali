.class public Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;
.super Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;
.source "JsonWebKeyLadderExchange.java"


# static fields
.field private static final A128_KW_TRANSFORM:Ljava/lang/String; = "AESWrap"

.field private static final AES_KW_BLOCK_SIZE:I = 0x8

.field private static final SPACE:B = 0x20t


# instance fields
.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;-><init>()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    .line 482
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 483
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;-><init>()V

    .line 492
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Secret key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 496
    return-void
.end method


# virtual methods
.method public unwrap([B)[B
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    const-string/jumbo v0, "AESWrap"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 561
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 562
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

    .line 573
    :goto_0
    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 565
    :catch_1
    move-exception v0

    .line 566
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 567
    :catch_2
    move-exception v0

    .line 568
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public wrap([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 505
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    .line 511
    if-nez v0, :cond_0

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1

    .line 526
    :try_start_0
    const-string/jumbo v0, "AESWrap"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 527
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 532
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 533
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 548
    :goto_1
    return-object v0

    .line 514
    :cond_0
    rsub-int/lit8 v1, v0, 0x8

    .line 515
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 516
    const/4 v2, 0x0

    const/16 v3, 0x7b

    aput-byte v3, v0, v2

    .line 517
    add-int/lit8 v1, v1, 0x1

    .line 518
    const/16 v2, 0x20

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 519
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 536
    :catch_1
    move-exception v0

    .line 537
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 538
    :catch_2
    move-exception v0

    .line 539
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Zero-length plaintext provided."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 540
    :catch_3
    move-exception v0

    .line 541
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 542
    :catch_4
    move-exception v0

    .line 543
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v0

    goto :goto_1
.end method
