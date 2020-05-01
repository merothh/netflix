.class public Lo/FrameworkNetworkSecurityPolicy;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Lo/TextInputTimePickerView;

.field private final e:I

.field private final i:I

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/FontRequest;IILjava/lang/String;ZLo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;II",
            "Ljava/lang/String;",
            "Z",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchBillboardVideos"

    .line 41
    invoke-direct {p0, v0, p1, p6}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 42
    iput p2, p0, Lo/FrameworkNetworkSecurityPolicy;->e:I

    .line 43
    iput p3, p0, Lo/FrameworkNetworkSecurityPolicy;->i:I

    .line 44
    iput-boolean p5, p0, Lo/FrameworkNetworkSecurityPolicy;->j:Z

    .line 48
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2, p2}, Lo/SEService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/FrameworkNetworkSecurityPolicy;->d:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/FrameworkNetworkSecurityPolicy;->d:Lo/TextInputTimePickerView;

    iget v1, p0, Lo/FrameworkNetworkSecurityPolicy;->e:I

    iget v2, p0, Lo/FrameworkNetworkSecurityPolicy;->i:I

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lo/SEService;->d(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 8

    const/4 p2, 0x3

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "detail"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "inQueue"

    aput-object v4, v0, v3

    .line 58
    invoke-static {v0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 59
    iget-object v4, p0, Lo/FrameworkNetworkSecurityPolicy;->a:Lo/FontRequest;

    iget-object v5, p0, Lo/FrameworkNetworkSecurityPolicy;->d:Lo/TextInputTimePickerView;

    new-array v6, p2, [Ljava/lang/Object;

    const-string v7, "videoEvidence"

    aput-object v7, v6, v1

    iget v7, p0, Lo/FrameworkNetworkSecurityPolicy;->i:I

    invoke-static {v7}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v0, v6, v3

    invoke-static {v6}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {v5, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {v4, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    .line 61
    iget-object v4, p0, Lo/FrameworkNetworkSecurityPolicy;->a:Lo/FontRequest;

    iget-object v5, p0, Lo/FrameworkNetworkSecurityPolicy;->d:Lo/TextInputTimePickerView;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v6, "billboardData"

    aput-object v6, p2, v1

    iget v6, p0, Lo/FrameworkNetworkSecurityPolicy;->i:I

    invoke-static {v6}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v6

    aput-object v6, p2, v2

    const-string v2, "billboardSummary"

    aput-object v2, p2, v3

    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {v5, p2}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-virtual {v4, p2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p2

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x0

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/agp;

    .line 74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 75
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;

    :cond_0
    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {v4, v2, v3}, Lo/agp;->c(Ljava/lang/String;Lo/agi;)V

    .line 80
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/VideoAssets;->horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/VideoAssets;->horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/FrameworkNetworkSecurityPolicy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/FrameworkNetworkSecurityPolicy;->n()Z

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lo/ci;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected m()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lo/FrameworkNetworkSecurityPolicy;->j:Z

    return v0
.end method
