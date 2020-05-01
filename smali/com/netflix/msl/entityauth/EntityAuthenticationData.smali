.class public abstract Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.super Ljava/lang/Object;
.source "EntityAuthenticationData.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_AUTHDATA:Ljava/lang/String; = "authdata"

.field private static final KEY_SCHEME:Ljava/lang/String; = "scheme"


# instance fields
.field private final scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 64
    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 5

    .prologue
    .line 83
    :try_start_0
    const-string/jumbo v0, "scheme"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ENTITYAUTH_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "entityauthdata "

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

    .line 87
    :cond_0
    :try_start_1
    const-string/jumbo v0, "authdata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    invoke-virtual {v2, p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 147
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    check-cast p1, Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 150
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    iget-object v1, p1, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getAuthData()Lcom/netflix/android/org/json/JSONObject;
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONStringer;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONStringer;-><init>()V

    .line 130
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONStringer;->object()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "scheme"

    .line 131
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "authdata"

    .line 132
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getAuthData()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONWriter;->endObject()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
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

    .line 137
    :catch_1
    move-exception v0

    .line 138
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
