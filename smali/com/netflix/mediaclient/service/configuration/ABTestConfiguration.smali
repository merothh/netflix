.class public Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;
.super Ljava/lang/Object;
.source "ABTestConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_ab_test_config"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABConfigDataLoadedEvent(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getAimLowPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getAimLowPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getAimLowPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoppola1TestCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCoppola1ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCoppola1ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoppola2TestCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCoppola2ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCoppola2ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method public persistABTestConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "abTestConfig object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persisting ab test config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "abTestConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABConfigDataReceivedEvent(Landroid/content/Context;)V

    goto :goto_0
.end method
