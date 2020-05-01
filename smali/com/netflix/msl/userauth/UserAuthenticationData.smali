.class public abstract Lcom/netflix/msl/userauth/UserAuthenticationData;
.super Ljava/lang/Object;
.source "UserAuthenticationData.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_AUTHDATA:Ljava/lang/String; = "authdata"

.field private static final KEY_SCHEME:Ljava/lang/String; = "scheme"


# instance fields
.field private final scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 5

    :try_start_0
    const-string/jumbo v0, "scheme"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_USERAUTH_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userauthdata "

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

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v1, "authdata"

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    iget-object v1, p1, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getAuthData()Lcom/netflix/android/org/json/JSONObject;
.end method

.method public getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONStringer;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONStringer;->object()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "scheme"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-virtual {v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    const-string/jumbo v1, "authdata"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->getAuthData()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONWriter;->endObject()Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

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

    :catch_1
    move-exception v0

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
