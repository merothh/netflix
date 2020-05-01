.class public Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "ContinueWatchingProgBar.java"


# static fields
.field private static final CW_PROG_BAR_CONFIG_PREFS_KEY:Ljava/lang/String; = "persistent_cw_prog_bar"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCell(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "persistent_cw_prog_bar"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "7151"

    return-object v0
.end method
