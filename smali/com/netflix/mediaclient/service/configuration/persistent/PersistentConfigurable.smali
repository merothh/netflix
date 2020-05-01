.class public abstract Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.super Ljava/lang/Object;
.source "PersistentConfigurable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistentConfigurable"


# instance fields
.field private mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->fromInt(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getTestId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABTestLoadedEvent(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public abstract getCell(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getPrefKey()Ljava/lang/String;
.end method

.method public abstract getTestId()Ljava/lang/String;
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-void
.end method

.method protected shouldForceUpdateMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getTestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABTestReceivedEvent(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->shouldForceUpdateMemory()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :cond_1
    return-void
.end method
