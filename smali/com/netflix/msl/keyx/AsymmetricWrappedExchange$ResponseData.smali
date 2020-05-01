.class public Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "AsymmetricWrappedExchange.java"


# static fields
.field private static final KEY_ENCRYPTION_KEY:Ljava/lang/String; = "encryptionkey"

.field private static final KEY_HMAC_KEY:Ljava/lang/String; = "hmackey"

.field private static final KEY_KEY_PAIR_ID:Ljava/lang/String; = "keypairid"


# instance fields
.field private final encryptionKey:[B

.field private final hmacKey:[B

.field private final keyPairId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 472
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 474
    :try_start_0
    const-string/jumbo v0, "keypairid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 476
    :try_start_1
    const-string/jumbo v0, "encryptionkey"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    :try_start_2
    const-string/jumbo v0, "hmackey"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 488
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 485
    :catch_1
    move-exception v0

    .line 486
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 482
    :catch_2
    move-exception v0

    .line 483
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;[B[B)V
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 457
    iput-object p2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    .line 458
    iput-object p3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 459
    iput-object p4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 460
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 525
    if-ne p1, p0, :cond_0

    .line 531
    :goto_0
    return v1

    .line 526
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 527
    check-cast v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    .line 528
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 530
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    iget-object v0, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 531
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getEncryptionKey()[B
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    return-object v0
.end method

.method public getHmacKey()[B
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    return-object v0
.end method

.method public getKeyPairId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 513
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 514
    const-string/jumbo v1, "keypairid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 515
    const-string/jumbo v1, "encryptionkey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 516
    const-string/jumbo v1, "hmackey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 517
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
