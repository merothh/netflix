.class Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;
.super Ljava/lang/Object;
.source "AuthorizationTokensManager.java"


# static fields
.field static final APP_ID:Ljava/lang/String; = "samurai"

.field private static final TAG:Ljava/lang/String; = "nf_voip"


# instance fields
.field private mAuthorizationTokensMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "User agent can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->loadDefaultTokens()V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->loadRetrievedTokens()V

    .line 55
    return-void
.end method

.method private dumpTokens()V
    .locals 6

    .prologue
    .line 231
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "--------- Tokens map ------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    .line 235
    const-string/jumbo v3, "nf_voip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v0, "nf_voip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "---------------------------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    return-void
.end method

.method private getDefaultTokens()Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_DEFAULT:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    .line 219
    if-nez v0, :cond_1

    .line 220
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default tokens not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default tokens found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default tokens expired?"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadDefaultTokens()V
    .locals 3

    .prologue
    .line 59
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Load default tokens..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getDefaultTokens(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getUserType()Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Unable to find default tokens!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadRetrievedTokens()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "cusotmer_support_voip_authorizations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "User and non member tokens NOT found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Member token found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non-member token found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to load user/non member auths from preferences."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Member token NOT found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    :cond_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Non-member token NOT found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private save()V
    .locals 4

    .prologue
    .line 247
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Save changes to preferences..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    .line 253
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    .line 255
    if-eqz v0, :cond_0

    .line 256
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "Member tokens saved to preferences..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->toJSon()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    .line 263
    if-eqz v0, :cond_1

    .line 264
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "Non member tokens saved to preferences..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->toJSon()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cusotmer_support_voip_authorizations"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Saved."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 259
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Member tokens NOT found, unable to save!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to save to preferences..."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 267
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non member tokens NOT found, unable to save!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getAuthorizationTokens()Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;
    .locals 4

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "User is logged in, use member authorization tokens if exist..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    .line 185
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Found tokens expired! Reset."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    .line 190
    :cond_0
    if-nez v0, :cond_1

    .line 191
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Gets default authorization tokens!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->getDefaultTokens()Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    move-result-object v0

    .line 193
    if-nez v0, :cond_4

    .line 194
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default user authorization tokens not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_2
    monitor-exit p0

    return-object v0

    .line 181
    :cond_3
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "User is NOT logged in, use non member authorization tokens if exist..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    goto :goto_0

    .line 197
    :cond_4
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default user authorization tokens found."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshAuthorizationTokens()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    .line 109
    if-nez v0, :cond_0

    .line 110
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non member token is not found, it needs to fetched..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non member token is not found, it needs to fetched..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Non member token exist and it is not expired. No need to refresh!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeUserTokens()V
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Remove VOIP user authorization data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->save()V

    .line 214
    return-void
.end method

.method public declared-synchronized updateAuthorizationData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;)V
    .locals 6

    .prologue
    .line 125
    monitor-enter p0

    if-nez p1, :cond_0

    .line 126
    :try_start_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VOIP authorization data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    .line 132
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getNonMemberVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VOIP non member authorization data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    .line 149
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getUserVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v0

    if-nez v0, :cond_4

    .line 150
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VOIP user authorization data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    .line 166
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VOIP non member authorization data found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getNonMemberVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getNonMemberVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v4

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserEncToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getExpirationTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;J)V

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VOIP non member token created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getUserType()Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 153
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VOIP user authorization data found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getUserVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getUserVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v4

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserEncToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getExpirationTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;J)V

    .line 158
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VOIP member token created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getUserType()Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method
