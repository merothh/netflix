.class public Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;
.super Ljava/lang/Object;
.source "AccountConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_configuration_account"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accountConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "accountConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "bw_user_control_auto"

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    const-string/jumbo v1, "bw_user_manual_setting"

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    return-void
.end method

.method public enableHTTPSAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableHTTPSAuth()Z

    move-result v0

    goto :goto_0
.end method

.method public enableLowBitrateStreams()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableLowBitrateStreams()Z

    move-result v0

    goto :goto_0
.end method

.method public getABTestConfiguration_6634()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getABTestConfiguration_6634()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public getCastEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getCastEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getCastWhitelist()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getCastWhitelistAsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getJPlayerConfig()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getJPlayerThreadConfigAsJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getKubrickConfig()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getKubrickConfig()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public getMdxBlacklist()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getMdxBlacklistAsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreAppPartnerExperience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreAppPartnerExperience()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreAppWidgetExperience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreAppWidgetExperience()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getVideoBufferSize()I

    move-result v0

    goto :goto_0
.end method

.method public persistAccountConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "accountConfig obj is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persisting account config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accountConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    goto :goto_0
.end method

.method public shouldDisableVoip()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->isVoipEnabledOnAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDisableMcQueenV2()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toDisableMcQueenV2()Z

    move-result v0

    goto :goto_0
.end method

.method public toDisableSuspendPlay()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toDisableSuspendPlay()Z

    move-result v0

    goto :goto_0
.end method
