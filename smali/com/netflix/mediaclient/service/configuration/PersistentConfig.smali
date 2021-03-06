.class public final Lcom/netflix/mediaclient/service/configuration/PersistentConfig;
.super Ljava/lang/Object;
.source "PersistentConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistentConfig"

.field private static mConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/VoiceSearch;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/VoiceSearch;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/VoiceSearch;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaOne;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaOne;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaOne;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaTwo;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaTwo;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaTwo;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/MotionBB;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/MotionBB;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/MotionBB;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/PhoneOrientation;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/PhoneOrientation;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/PhoneOrientation;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Memento;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Memento;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Memento;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Memento2;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Memento2;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Memento2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->delete(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getBrandLoveSurveyTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getCWProgressBar(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getCoppola1ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaOne;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getCoppola2ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/CoppolaTwo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getDPPrefetchABTestConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayPageRefreshTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v0, p0, v1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Memento;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Memento2;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getMotionBBTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/MotionBB;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneOrientation(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/PhoneOrientation;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceSearchABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/VoiceSearch;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static inAnyMementoTest(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inMemento2Test(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inMementoTest(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGuidanceTutorial(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_FOUR:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLaunchTutorial(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_FIVE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnRampTest(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refresh()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->refresh()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PersistentConfig"

    const-string/jumbo v1, "ConfigAgent is null. Returning without updating config."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    goto :goto_0
.end method
