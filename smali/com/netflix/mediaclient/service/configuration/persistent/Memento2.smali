.class public Lcom/netflix/mediaclient/service/configuration/persistent/Memento2;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "Memento2.java"


# static fields
.field private static final PERSISTENT_MEMENTO2_CONFIG_PREFS_KEY:Ljava/lang/String; = "persistent_memento2_key"


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
    .line 20
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "persistent_memento2_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "7827"

    return-object v0
.end method
