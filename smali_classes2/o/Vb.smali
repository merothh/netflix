.class public final Lo/Vb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bc;


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final synthetic c:Lo/Bc;

.field private final d:Ljava/lang/String;

.field private final e:Lo/Va;


# direct methods
.method public constructor <init>(Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lo/Vb;->c:Lo/Bc;

    iput-object p2, p0, Lo/Vb;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/Vb;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 200
    new-instance p2, Lo/Va;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    const-string p3, "videoDetails.playable"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lo/Vb;->d:Ljava/lang/String;

    iget-object v0, p0, Lo/Vb;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p2, p1, p3, v0}, Lo/Va;-><init>(Lo/AK;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    iput-object p2, p0, Lo/Vb;->e:Lo/Va;

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->H()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->I()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->J()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->L()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->M()Z

    move-result v0

    return v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aI()I
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aI()I

    move-result v0

    return v0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()I
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aM()I

    move-result v0

    return v0
.end method

.method public aN()I
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aN()I

    move-result v0

    return v0
.end method

.method public aO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aS()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aS()Z

    move-result v0

    return v0
.end method

.method public aT()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aT()Z

    move-result v0

    return v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aV()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aV()Z

    move-result v0

    return v0
.end method

.method public aW()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aW()Z

    move-result v0

    return v0
.end method

.method public aX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ad()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->ad()Z

    move-result v0

    return v0
.end method

.method public af()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->af()Z

    move-result v0

    return v0
.end method

.method public ah()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->ah()Z

    move-result v0

    return v0
.end method

.method public ai()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->ai()Z

    move-result v0

    return v0
.end method

.method public aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object v0

    return-object v0
.end method

.method public ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->ba()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic bb()Lo/AK;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lo/Vb;->e()Lo/Va;

    move-result-object v0

    check-cast v0, Lo/AK;

    return-object v0
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public be()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->be()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bj()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bk()Lcom/netflix/model/leafs/VideoInfo$Sharing;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bk()Lcom/netflix/model/leafs/VideoInfo$Sharing;

    move-result-object v0

    return-object v0
.end method

.method public bl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bn()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bo()Lcom/netflix/model/leafs/originals/ContentWarning;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bo()Lcom/netflix/model/leafs/originals/ContentWarning;

    move-result-object v0

    return-object v0
.end method

.method public bp()Lcom/netflix/model/leafs/SupportedMediaTracks;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lo/Va;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/Vb;->e:Lo/Va;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lo/Vb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getMatchPercentage()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 204
    iget-object v0, p0, Lo/Vb;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getUserThumbRating()I

    move-result v0

    return v0
.end method

.method public isAvailableForDownload()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->isAvailableForDownload()Z

    move-result v0

    return v0
.end method

.method public isNewForPvr()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->isNewForPvr()Z

    move-result v0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->isPreRelease()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Vb;->c:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
