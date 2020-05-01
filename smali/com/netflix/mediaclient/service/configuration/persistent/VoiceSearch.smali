.class public Lcom/netflix/mediaclient/service/configuration/persistent/VoiceSearch;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "VoiceSearch.java"


# static fields
.field private static final PERSISTENT_VOICE_SEARCH_CONFIG_PREFS_KEY:Ljava/lang/String; = "persistent_voice_search_experience_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCell(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "persistent_voice_search_experience_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "6786"

    return-object v0
.end method
