.class public Lo/cv;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static e:Ljava/lang/String; = "nf_configuration_account"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/cv;->c:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lo/cv;->c:Landroid/content/Context;

    const-string v0, "accountConfig"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/cv;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 49
    new-instance v0, Lo/aea;

    invoke-direct {v0}, Lo/aea;-><init>()V

    const-string v1, "accountConfig"

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Lo/aea;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, -0x1

    const-string v2, "bw_user_control_auto"

    .line 52
    invoke-virtual {v0, v2, v1}, Lo/aea;->e(Ljava/lang/String;I)Z

    const-string v2, "bw_user_manual_setting"

    .line 53
    invoke-virtual {v0, v2, v1}, Lo/aea;->e(Ljava/lang/String;I)Z

    .line 54
    invoke-virtual {v0}, Lo/aea;->b()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getBwCap(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData;->Companion:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;->getBW_CAP_DEFAULT()Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()Lorg/json/JSONArray;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getMdxBlacklistAsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getStreamingCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V
    .locals 3

    if-nez p1, :cond_0

    .line 109
    sget-object p1, Lo/cv;->e:Ljava/lang/String;

    const-string v0, "accountConfig obj is null - ignore overwrite"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lo/cv;->c:Landroid/content/Context;

    const-string v2, "accountConfig"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lo/cv;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getCastEnabled()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toDisableSuspendPlay()Z

    move-result v0

    return v0
.end method

.method public f()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getOfflineCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreAppWidgetExperience()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreAppPartnerExperience()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getUserPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->isVoipEnabledOnAccount()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public l()Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;
    .locals 1

    .line 179
    iget-object v0, p0, Lo/cv;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getSearchResultsSimilarityAlgorithm()Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;

    move-result-object v0

    return-object v0
.end method
