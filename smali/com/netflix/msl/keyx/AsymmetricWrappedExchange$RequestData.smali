.class public Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "AsymmetricWrappedExchange.java"


# static fields
.field private static final KEY_KEY_PAIR_ID:Ljava/lang/String; = "keypairid"

.field private static final KEY_MECHANISM:Ljava/lang/String; = "mechanism"

.field private static final KEY_PUBLIC_KEY:Ljava/lang/String; = "publickey"


# instance fields
.field private final keyPairId:Ljava/lang/String;

.field private final mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    :try_start_0
    const-string/jumbo v0, "keypairid"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    const-string/jumbo v0, "mechanism"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string/jumbo v0, "publickey"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :try_start_3
    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RequestData$Mechanism:[I

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    :pswitch_0
    :try_start_6
    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    iput-object p1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    iput-object p3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    iput-object p4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v0, p1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    iget-object v5, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v4, v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    iget-object v0, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public getKeyPairId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "keypairid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "mechanism"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "publickey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public getMechanism()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
