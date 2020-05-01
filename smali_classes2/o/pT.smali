.class public Lo/pT;
.super Lo/pQ;
.source ""


# instance fields
.field private f:Ljava/lang/String;

.field private h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

.field private i:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lo/pQ;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Lo/pT;
    .locals 0

    .line 38
    iput-object p1, p0, Lo/pT;->i:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lo/pT;->f:Ljava/lang/String;

    return-object p0
.end method

.method protected b()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 1

    .line 119
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object v0
.end method

.method b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lo/pT;
    .locals 0

    .line 44
    iput-object p1, p0, Lo/pT;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    return-object p0
.end method

.method protected c()Z
    .locals 1

    .line 50
    invoke-static {}, Lo/dC;->A_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Ljava/lang/String;)Lo/pT;
    .locals 0

    .line 54
    iput-object p1, p0, Lo/pT;->k:Ljava/lang/String;

    return-object p0
.end method

.method protected d(Lorg/json/JSONObject;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lo/pT;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    const-string v1, "downloadQuality"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v0, p0, Lo/pT;->i:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lo/pT;->f:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lo/pT;->i:Ljava/lang/String;

    const-string v1, "oxid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v0, p0, Lo/pT;->f:Ljava/lang/String;

    const-string v1, "dxid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-static {}, Lo/dC;->A_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "liteDevice"

    .line 67
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method protected k()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lo/pT;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->i()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isVP9HWCodecEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected n()Lorg/json/JSONArray;
    .locals 3

    .line 72
    iget-object v0, p0, Lo/pT;->k:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lo/pT;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "nf_manifest_param"

    const-string v2, "using mSelectedVideoCodecProfile %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 75
    iget-object v1, p0, Lo/pT;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    invoke-virtual {p0, v0}, Lo/pT;->c(Lorg/json/JSONArray;)V

    return-object v0

    .line 79
    :cond_0
    invoke-super {p0}, Lo/pQ;->n()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected p()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/pT;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->i()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isEveVP9HWCodecEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected w()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lo/pT;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->i()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isAVCHighCodecEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected x()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lo/pT;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->i()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isAVCHighCodecForceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
