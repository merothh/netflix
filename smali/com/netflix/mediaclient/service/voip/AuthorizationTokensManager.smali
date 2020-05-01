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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "User agent can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->loadDefaultTokens()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->loadRetrievedTokens()V

    return-void
.end method

.method private dumpTokens()V
    .locals 6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "--------- Tokens map ------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

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

    :cond_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "---------------------------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private getDefaultTokens()Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_DEFAULT:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    if-nez v0, :cond_1

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default tokens not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default tokens found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default tokens expired?"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadDefaultTokens()V
    .locals 3

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Load default tokens..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getDefaultTokens(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getUserType()Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Unable to find default tokens!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadRetrievedTokens()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "cusotmer_support_voip_authorizations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "User and non member tokens NOT found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Member token found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non-member token found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to load user/non member auths from preferences."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Member token NOT found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

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

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Save changes to preferences..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "Member tokens saved to preferences..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->toJSon()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "Non member tokens saved to preferences..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->toJSon()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cusotmer_support_voip_authorizations"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Saved."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Member tokens NOT found, unable to save!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to save to preferences..."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "User is logged in, use member authorization tokens if exist..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Found tokens expired! Reset."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Gets default authorization tokens!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->getDefaultTokens()Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default user authorization tokens not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

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

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "User is NOT logged in, use non member authorization tokens if exist..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Default user authorization tokens found."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshAuthorizationTokens()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non member token is not found, it needs to fetched..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Non member token is not found, it needs to fetched..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Non member token exist and it is not expired. No need to refresh!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeUserTokens()V
    .locals 2

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Remove VOIP user authorization data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->save()V

    return-void
.end method

.method public declared-synchronized updateAuthorizationData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VOIP authorization data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getNonMemberVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VOIP non member authorization data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getUserVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VOIP user authorization data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->dumpTokens()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getNonMemberVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v4

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserEncToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getExpirationTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;J)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

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

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->mAuthorizationTokensMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getUserType()Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

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

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->getUserVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    move-result-object v4

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getUserEncToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;->getExpirationTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;J)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

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
