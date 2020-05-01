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

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 56
    :try_start_0
    const-string/jumbo v0, "cdmkeyresponse"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "encryptionkeyid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "hmackeyid"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
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

    .prologue
    .line 46
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 47
    iput-object p2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p0, p1, :cond_0

    .line 98
    :goto_0
    return v1

    .line 90
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    if-nez v0, :cond_1

    move v1, v2

    .line 91
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    .line 95
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    .line 98
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

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHmacKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 67
    const-string/jumbo v1, "encryptionkeyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 68
    const-string/jumbo v1, "hmackeyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 69
    const-string/jumbo v1, "cdmkeyresponse"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 70
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:Ljava/lang/String;

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:Ljava/lang/String;

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:Ljava/lang/String;

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
