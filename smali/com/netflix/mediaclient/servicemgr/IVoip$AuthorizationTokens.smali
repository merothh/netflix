.class public Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;
.super Ljava/lang/Object;
.source "IVoip.java"


# static fields
.field private static final ENC_TOKEN:Ljava/lang/String; = "encToken"

.field private static final EXP_TIME:Ljava/lang/String; = "expTime"

.field private static final USER_TOKEN:Ljava/lang/String; = "userToken"

.field private static final USER_TYPE:Ljava/lang/String; = "userType"


# instance fields
.field private encToken:Ljava/lang/String;

.field public expirationTimeInMs:J

.field private userToken:Ljava/lang/String;

.field private userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "User type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "userToken is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "encToken is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    iput-wide p4, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "userToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    const-string/jumbo v0, "encToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    const-string/jumbo v0, "userType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    const-string/jumbo v0, "expTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public equalsWithoutUserType(Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getEncToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    return-wide v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJSon()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "userToken"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "encToken"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "userType"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "expTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuthorizationTokens{userToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->encToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->userType:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expirationTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->expirationTimeInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
