.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
.super Ljava/lang/Object;
.source "ABTestConfigData.java"


# static fields
.field public static final AIM_LOW_PREFETCH_DP_TEST_ID:Ljava/lang/String; = "7722"

.field public static final AIM_LOW_PREFETCH_LOLOMO_TEST_ID:Ljava/lang/String; = "7480"

.field public static final COPPOLA_1_AB_TEST_ID:Ljava/lang/String; = "6729"

.field public static final COPPOLA_2_AB_TEST_ID:Ljava/lang/String; = "6941"

.field public static final CW_PROGRESS_BAR_TEST_ID:Ljava/lang/String; = "7151"

.field public static final DISPLAY_PAGE_REFRESH_TEST_ID:Ljava/lang/String; = "7196"

.field public static final MEMENTO2_TEST_ID:Ljava/lang/String; = "7827"

.field public static final MEMENTO_TEST_ID:Ljava/lang/String; = "7131"

.field public static final MOTION_BB_AB_TEST_ID:Ljava/lang/String; = "6930"

.field public static final OFFLINE_TUTORIAL_TEST_ID:Ljava/lang/String; = "7756"

.field public static final ONRAMP_TEST_ID:Ljava/lang/String; = "7714"

.field public static final PHONE_ORIENTATION_TEST_ID:Ljava/lang/String; = "7129"

.field public static final SURVEY_TEST_ID:Ljava/lang/String; = "7141"

.field private static final TAG:Ljava/lang/String; = "nf_config"

.field public static final VOICE_SEARCH_AB_TEST_ID:Ljava/lang/String; = "6786"

.field private static testIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aimLowPrefetchDPConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7722"
    .end annotation
.end field

.field private aimLowPrefetchLolomoConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7480"
    .end annotation
.end field

.field private coppola1Config:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6729"
    .end annotation
.end field

.field private coppola2Config:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6941"
    .end annotation
.end field

.field private cwProgressBarConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7151"
    .end annotation
.end field

.field private displayPageRefresh:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7196"
    .end annotation
.end field

.field private memento2Config:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7827"
    .end annotation
.end field

.field private mementoConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7131"
    .end annotation
.end field

.field private motionBBConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6930"
    .end annotation
.end field

.field private offlineTutorial:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7756"
    .end annotation
.end field

.field private onrampConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7714"
    .end annotation
.end field

.field private phoneOrientationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7129"
    .end annotation
.end field

.field private surveyConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7141"
    .end annotation
.end field

.field private voiceSearchConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6786"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing abTestConfig from json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    goto :goto_0
.end method

.method public static getABTestIds(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "6786"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "6930"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7196"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7151"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7141"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7131"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7827"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7714"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7756"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7480"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7722"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "6729"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "6941"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    const-string/jumbo v1, "7129"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->testIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->aimLowPrefetchDPConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getAimLowPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->aimLowPrefetchLolomoConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->surveyConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->cwProgressBarConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getCoppola1ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->coppola1Config:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getCoppola2ABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->coppola2Config:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->displayPageRefresh:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->memento2Config:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->mementoConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->motionBBConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->offlineTutorial:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->onrampConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->phoneOrientationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->voiceSearchConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_config"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ABTestConfigData as json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method
