.class public abstract Lcom/netflix/msl/keyx/KeyResponseData;
.super Ljava/lang/Object;
.source "KeyResponseData.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_KEYDATA:Ljava/lang/String; = "keydata"

.field private static final KEY_MASTER_TOKEN:Ljava/lang/String; = "mastertoken"

.field private static final KEY_SCHEME:Ljava/lang/String; = "scheme"


# instance fields
.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 72
    iput-object p2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 73
    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 5

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v1, "mastertoken"

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    .line 94
    const-string/jumbo v1, "scheme"

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    .line 96
    if-nez v2, :cond_0

    .line 97
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyresponsedata "

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

    .line 98
    :cond_0
    :try_start_1
    const-string/jumbo v1, "keydata"

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 101
    invoke-virtual {p0, v2}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;

    move-result-object v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-virtual {v3, p0, v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    if-ne p1, p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/keyx/KeyResponseData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 169
    :cond_2
    check-cast p1, Lcom/netflix/msl/keyx/KeyResponseData;

    .line 170
    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    iget-object v3, p1, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-object v0
.end method

.method protected abstract getKeydata()Lcom/netflix/android/org/json/JSONObject;
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONStringer;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONStringer;-><init>()V

    .line 143
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONStringer;->object()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "mastertoken"

    .line 144
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "scheme"

    .line 145
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "keydata"

    .line 146
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->getKeydata()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONWriter;->endObject()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " JSON."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
