.class public Lcom/netflix/msl/keyx/WidevineKeyRequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "WidevineKeyRequestData.java"


# static fields
.field private static final KEY_REQUEST_DATA:Ljava/lang/String; = "keyrequest"


# instance fields
.field private final keyRequestData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 44
    :try_start_0
    const-string/jumbo v0, "keyrequest"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
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
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyRequestData cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iput-object p1, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    instance-of v0, p1, Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    if-nez v0, :cond_2

    move v2, v1

    .line 63
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    .line 67
    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    .line 70
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 68
    goto :goto_1
.end method

.method public getKeyRequestData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 53
    const-string/jumbo v1, "keyrequest"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 54
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:Ljava/lang/String;

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
