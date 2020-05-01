.class public Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "AuthenticatedDiffieHellmanResponseData.java"


# static fields
.field private static final KEY_PARAMETERS_ID:Ljava/lang/String; = "parametersid"

.field private static final KEY_PUBLIC_KEY:Ljava/lang/String; = "publickey"

.field private static final KEY_WRAPDATA:Ljava/lang/String; = "wrapdata"


# instance fields
.field private final parametersId:Ljava/lang/String;

.field private final publicKey:Ljava/math/BigInteger;

.field private final wrapdata:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    :try_start_0
    const-string/jumbo v0, "wrapdata"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    const-string/jumbo v0, "parametersid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    const-string/jumbo v0, "publickey"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

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

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

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

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;[BLjava/lang/String;Ljava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    iput-object p2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    iput-object p3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    iget-object v0, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

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

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "wrapdata"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "parametersid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v2, "publickey"

    invoke-static {v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public getParametersId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getWrapdata()[B
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
