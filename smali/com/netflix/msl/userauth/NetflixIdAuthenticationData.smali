.class public final Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "NetflixIdAuthenticationData.java"


# static fields
.field private static final KEY_NETFLIXID:Ljava/lang/String; = "netflixid"

.field private static final KEY_SECURENETFLIXID:Ljava/lang/String; = "securenetflixid"


# instance fields
.field private final netflixId:Ljava/lang/String;

.field private final secureNetflixId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;-><init>(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->NETFLIXID:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    :try_start_0
    const-string/jumbo v0, "netflixid"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    const-string/jumbo v0, "securenetflixid"

    invoke-virtual {p1, v0, p3}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->NETFLIXID_COOKIES_BLANK:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixId authdata missing in payload and no fallback provided "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetflixId authdata "

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

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->NETFLIXID:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    iput-object p1, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    invoke-virtual {v0, p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public getAuthData()Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "netflixid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "securenetflixid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "NetflidId authdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetflixId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureNetflixId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v1, 0x2b

    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetflixIdAuthenticationData(netflixId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureNetflixId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
