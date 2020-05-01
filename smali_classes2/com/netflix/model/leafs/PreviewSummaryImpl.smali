.class public final Lcom/netflix/model/leafs/PreviewSummaryImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/PreviewSummary;


# instance fields
.field private final previewArt:Lcom/netflix/model/leafs/PreviewArt;

.field private final supplementalSummary:Lcom/netflix/model/leafs/SupplementalSummary;

.field private final video:Lo/agg;


# direct methods
.method public constructor <init>(Lo/agg;Lcom/netflix/model/leafs/SupplementalSummary;Z)V
    .locals 1

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supplementalSummary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    iput-object p2, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->supplementalSummary:Lcom/netflix/model/leafs/SupplementalSummary;

    .line 16
    iget-object p1, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lo/agg;->k()Lcom/netflix/model/leafs/PreviewArt;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/agg;->o()Lcom/netflix/model/leafs/PreviewArt;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->previewArt:Lcom/netflix/model/leafs/PreviewArt;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->c()Lcom/netflix/model/leafs/ArtworkColors;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/ArtworkColors;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->previewArt:Lcom/netflix/model/leafs/PreviewArt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PreviewArt;->getBoxArtId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->previewArt:Lcom/netflix/model/leafs/PreviewArt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PreviewArt;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getForegroundColor()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->c()Lcom/netflix/model/leafs/ArtworkColors;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/ArtworkColors;->getForegroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginalBrandingUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->previewArt:Lcom/netflix/model/leafs/PreviewArt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PreviewArt;->getOriginalBrandingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPanelArtUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->previewArt:Lcom/netflix/model/leafs/PreviewArt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PreviewArt;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupplementalVideoCanStream()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->supplementalSummary:Lcom/netflix/model/leafs/SupplementalSummary;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/SupplementalSummary;->supplementalCanStream:Z

    return v0
.end method

.method public getSupplementalVideoDuration()J
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->supplementalSummary:Lcom/netflix/model/leafs/SupplementalSummary;

    iget-wide v0, v0, Lcom/netflix/model/leafs/SupplementalSummary;->supplementalDuration:J

    return-wide v0
.end method

.method public getSupplementalVideoId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->supplementalSummary:Lcom/netflix/model/leafs/SupplementalSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/SupplementalSummary;->supplementalVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTitleTreatmentUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->previewArt:Lcom/netflix/model/leafs/PreviewArt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PreviewArt;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    const-string v1, "video.type"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAvailableForDownload()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->isAvailableForDownload()Z

    move-result v0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/model/leafs/PreviewSummaryImpl;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->isPreRelease()Z

    move-result v0

    return v0
.end method
