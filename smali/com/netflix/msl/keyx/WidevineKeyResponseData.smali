.class public Lcom/netflix/msl/keyx/WidevineKeyResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "WidevineKeyResponseData.java"


# static fields
.field private static final KEY_CDM_KEY_RESPONSE:Ljava/lang/String; = "cdmkeyresponse"

.field private static final KEY_ENCRYPTION_KEY_ID:Ljava/lang/String; = "encryptionkeyid"

.field private static final KEY_HMAC_KEY_ID:Ljava/lang/String; = "hmackeyid"


# instance fields
.field private final encryptionKeyId:Ljava/lang/String;

.field private final hmacKeyId:Ljava/lang/String;

.field private final keyResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    :try_start_0
    const-string/jumbo v0, "cdmkeyresponse"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    const-string/jumbo v0, "encryptionkeyid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    const-string/jumbo v0, "hmackeyid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

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
.end method

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    iput-object p2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getEncryptionKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHmacKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "encryptionkeyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "hmackeyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "cdmkeyresponse"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
