.class public Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "SymmetricWrappedExchange.java"


# static fields
.field private static final KEY_ENCRYPTION_KEY:Ljava/lang/String; = "encryptionkey"

.field private static final KEY_HMAC_KEY:Ljava/lang/String; = "hmackey"

.field private static final KEY_KEY_ID:Ljava/lang/String; = "keyid"


# instance fields
.field private final encryptionKey:[B

.field private final hmacKey:[B

.field private final keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 6

    .prologue
    .line 200
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 202
    :try_start_0
    const-string/jumbo v0, "keyid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 204
    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 206
    :try_start_2
    const-string/jumbo v0, "encryptionkey"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    :try_start_3
    const-string/jumbo v0, "hmackey"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 221
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    :try_start_4
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keydata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 215
    :catch_1
    move-exception v0

    .line 216
    :try_start_5
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 218
    :catch_2
    move-exception v0

    .line 219
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

    .line 212
    :catch_3
    move-exception v0

    .line 213
    :try_start_6
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keydata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
.end method

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;[B[B)V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 184
    iput-object p2, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    .line 185
    iput-object p3, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 186
    iput-object p4, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 187
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    if-ne p1, p0, :cond_0

    .line 267
    :goto_0
    return v1

    .line 262
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 263
    check-cast v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    .line 264
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    iget-object v4, v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    .line 265
    invoke-virtual {v3, v4}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 266
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B

    iget-object v0, v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 267
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
    .line 234
    iget-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    return-object v0
.end method

.method public getHmacKey()[B
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B

    return-object v0
.end method

.method public getKeyId()Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 250
    const-string/jumbo v1, "keyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 251
    const-string/jumbo v1, "encryptionkey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 252
    const-string/jumbo v1, "hmackey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 253
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    .line 276
    invoke-virtual {v1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 277
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 278
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
