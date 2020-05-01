.class public Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "UserIdTokenAuthenticationData.java"


# static fields
.field private static final KEY_MASTER_TOKEN:Ljava/lang/String; = "mastertoken"

.field private static final KEY_USER_ID_TOKEN:Ljava/lang/String; = "useridtoken"


# instance fields
.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 2

    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->USER_ID_TOKEN:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token must be bound to master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object p2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->USER_ID_TOKEN:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    :try_start_0
    new-instance v0, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v1, "mastertoken"

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v1, "useridtoken"

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, p1, v1, v2}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v0, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

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

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v4, v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v0, v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v0}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

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

.method public getAuthData()Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "mastertoken"

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    iget-object v3, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v3}, Lcom/netflix/msl/tokens/MasterToken;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "useridtoken"

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    iget-object v3, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3}, Lcom/netflix/msl/tokens/UserIdToken;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "user ID token authdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
