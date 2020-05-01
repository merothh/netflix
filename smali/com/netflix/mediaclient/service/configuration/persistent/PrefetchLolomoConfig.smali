.class public Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "PrefetchLolomoConfig.java"


# static fields
.field private static final PERSISTENT_PREFETCH_LOLOMO_CONFIG_PREFS_KEY:Ljava/lang/String; = "persistent_prefetch_lolomo_experience_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCell(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 21
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "persistent_prefetch_lolomo_experience_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "7480"

    return-object v0
.end method

.method protected shouldForceUpdateMemory()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
