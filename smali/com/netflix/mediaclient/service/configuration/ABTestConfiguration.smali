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

    .prologue
    .line 17
    const-string/jumbo v0, "nf_ab_test_config"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABConfigDataLoadedEvent(Landroid/content/Context;)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    return-void
.end method

.method public getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 222
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

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getAimLowPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 210
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

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 138
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

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 126
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

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCoppola1ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 78
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

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getCoppola2ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 90
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

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 114
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

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 174
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

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 162
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

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 102
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

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 198
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

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 186
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

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 150
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

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 66
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

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "abTestConfig object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
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

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "abTestConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABConfigDataReceivedEvent(Landroid/content/Context;)V

    goto :goto_0
.end method
