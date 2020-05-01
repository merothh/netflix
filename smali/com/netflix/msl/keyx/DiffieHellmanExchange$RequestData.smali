.class public Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "DiffieHellmanExchange.java"


# instance fields
.field private final parametersId:Ljava/lang/String;

.field private final privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

.field private final publicKey:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 143
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->DIFFIE_HELLMAN:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 145
    :try_start_0
    const-string/jumbo v0, "parametersid"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "publickey"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 147
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->access$000([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    .line 158
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
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

    .line 150
    :catch_1
    move-exception v0

    .line 151
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

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

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :catch_2
    move-exception v0

    .line 153
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

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

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 154
    :catch_3
    move-exception v0

    .line 155
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

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

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->DIFFIE_HELLMAN:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 129
    iput-object p1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;

    .line 131
    iput-object p3, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    .line 132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    if-ne p1, p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v3

    .line 200
    :cond_1
    instance-of v0, p1, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    if-nez v0, :cond_2

    move v3, v2

    .line 201
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 202
    check-cast v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    .line 203
    iget-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    iget-object v4, v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    .line 205
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getEncoded()[B

    move-result-object v1

    iget-object v4, v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {v4}, Ljavax/crypto/interfaces/DHPrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    .line 206
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;

    iget-object v0, v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;

    .line 208
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 205
    goto :goto_1
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 163
    const-string/jumbo v1, "parametersid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 164
    iget-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 165
    const-string/jumbo v2, "publickey"

    invoke-static {v1}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->access$000([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 166
    return-object v0
.end method

.method public getParametersId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljavax/crypto/interfaces/DHPrivateKey;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 220
    :goto_0
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->parametersId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->publicKey:Ljava/math/BigInteger;

    .line 221
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
