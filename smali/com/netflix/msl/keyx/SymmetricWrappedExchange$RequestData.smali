.class public Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "SymmetricWrappedExchange.java"


# static fields
.field private static final KEY_KEY_ID:Ljava/lang/String; = "keyid"


# instance fields
.field private final keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 95
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 97
    :try_start_0
    const-string/jumbo v0, "keyid"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 99
    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
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

.method public constructor <init>(Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;)V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 83
    iput-object p1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-ne p1, p0, :cond_0

    .line 133
    :goto_0
    return v1

    .line 131
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    .line 133
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    iget-object v0, v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    invoke-virtual {v3, v0}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->equals(Ljava/lang/Object;)Z

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

.method public getKeyId()Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    return-object v0
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 121
    const-string/jumbo v1, "keyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 122
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->keyId:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
