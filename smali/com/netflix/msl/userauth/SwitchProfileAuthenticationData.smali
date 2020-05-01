.class public Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "SwitchProfileAuthenticationData.java"


# static fields
.field private static final KEY_PROFILE_GUID:Ljava/lang/String; = "profileguid"

.field private static final KEY_USER_ID_TOKEN:Ljava/lang/String; = "useridtoken"


# instance fields
.field private final profileGuid:Ljava/lang/String;

.field private final userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SWITCH_PROFILE:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 50
    iput-object p1, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 51
    iput-object p2, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 67
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SWITCH_PROFILE:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERAUTH_MASTERTOKEN_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch profile authdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v1, "useridtoken"

    invoke-virtual {p3, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v0, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 77
    const-string/jumbo v0, "profileguid"

    invoke-virtual {p3, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    iget-object v0, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch profile authdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch profile authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch profile authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-ne p1, p0, :cond_0

    .line 127
    :goto_0
    return v1

    .line 125
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;

    .line 127
    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v4, v0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;

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

.method public getAuthData()Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 111
    const-string/jumbo v1, "useridtoken"

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    iget-object v3, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3}, Lcom/netflix/msl/tokens/UserIdToken;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 112
    const-string/jumbo v1, "profileguid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "switch profile authdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProfileGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;->profileGuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
