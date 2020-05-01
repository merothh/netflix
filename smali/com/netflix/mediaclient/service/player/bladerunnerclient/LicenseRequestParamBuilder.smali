.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
.super Ljava/lang/Object;
.source "LicenseRequestParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_FetchLicenseRequest"


# instance fields
.field mBase64Challenge:Ljava/lang/String;

.field mForceDeviceActivate:Z

.field mLicenseLink:Lorg/json/JSONObject;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-void
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "method"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    const-string/jumbo v3, "rel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    const-string/jumbo v3, "href"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "clientTime"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "forceDeviceActivate"

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mForceDeviceActivate:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "challengeBase64"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mBase64Challenge:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "appselectedlanguages"

    new-instance v5, Lorg/json/JSONArray;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "platformselectedlanguages"

    new-instance v4, Lorg/json/JSONArray;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "preferredlanguages"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v3, "error creating manifest params"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->setLicenseLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->setBase64Challenge(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    return-object v0
.end method

.method setBase64Challenge(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mBase64Challenge:Ljava/lang/String;

    return-object p0
.end method

.method setInvokeLocation(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->USER:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mForceDeviceActivate:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLicenseLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    return-object p0
.end method
