.class public final Lo/xU;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lo/Ax;)Lo/xW;
    .locals 1

    .line 53
    move-object v0, p0

    check-cast v0, Lo/agg;

    invoke-static {v0}, Lo/xU;->b(Lo/agg;)Lo/xW;

    move-result-object v0

    .line 54
    invoke-static {v0, p0}, Lo/xU;->c(Lo/xW;Lo/AK;)Lo/xW;

    return-object v0
.end method

.method public static b(Lo/agg;)Lo/xW;
    .locals 2

    .line 34
    new-instance v0, Lo/xW;

    invoke-direct {v0}, Lo/xW;-><init>()V

    .line 35
    invoke-interface {p0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xW;->id:Ljava/lang/String;

    .line 36
    invoke-interface {p0}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iput-object v1, v0, Lo/xW;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 37
    invoke-interface {p0}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xW;->title:Ljava/lang/String;

    .line 38
    invoke-interface {p0}, Lo/agg;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xW;->horzDispUrl:Ljava/lang/String;

    .line 39
    invoke-interface {p0}, Lo/agg;->bh()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xW;->tvCardUrl:Ljava/lang/String;

    .line 40
    invoke-interface {p0}, Lo/agg;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xW;->boxartUrl:Ljava/lang/String;

    .line 41
    invoke-interface {p0}, Lo/agg;->j()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xW;->synopsys:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Lo/Az;)Lo/xW;
    .locals 2

    .line 46
    move-object v0, p0

    check-cast v0, Lo/agg;

    invoke-static {v0}, Lo/xU;->b(Lo/agg;)Lo/xW;

    move-result-object v0

    .line 47
    invoke-static {v0, p0}, Lo/xU;->c(Lo/xW;Lo/AK;)Lo/xW;

    const/4 v1, 0x1

    .line 48
    invoke-static {p0, v1}, Lo/aeH;->e(Lo/Az;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xW;->trickplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Lo/xW;Lo/AK;)Lo/xW;
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lo/xW;->isPlayable:Z

    .line 60
    invoke-interface {p1}, Lo/AK;->d()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isPlayableEpisode:Z

    .line 61
    invoke-interface {p1}, Lo/AK;->ac()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isNextPlayableEpisode:Z

    .line 62
    invoke-interface {p1}, Lo/AK;->W()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isAutoPlayEnabled:Z

    .line 63
    invoke-interface {p1}, Lo/AK;->Z()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isAgeProtected:Z

    .line 64
    invoke-interface {p1}, Lo/AK;->ab()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isPinProtected:Z

    .line 65
    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isPreviewProtected:Z

    .line 67
    invoke-interface {p1}, Lo/AK;->P()I

    move-result v0

    iput v0, p0, Lo/xW;->plyableBookmarkPos:I

    .line 68
    invoke-interface {p1}, Lo/AK;->S()I

    move-result v0

    iput v0, p0, Lo/xW;->playableRuntime:I

    .line 69
    invoke-interface {p1}, Lo/AK;->R()I

    move-result v0

    iput v0, p0, Lo/xW;->playableEndtime:I

    .line 71
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xW;->playableId:Ljava/lang/String;

    .line 72
    invoke-interface {p1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xW;->playableTitle:Ljava/lang/String;

    .line 74
    invoke-interface {p1}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xW;->playableParentId:Ljava/lang/String;

    .line 75
    invoke-interface {p1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xW;->playableParentTitle:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lo/AK;->V()I

    move-result v0

    iput v0, p0, Lo/xW;->playableEpisodeNumber:I

    .line 78
    invoke-interface {p1}, Lo/AK;->X()I

    move-result v0

    iput v0, p0, Lo/xW;->playableSeasonNumber:I

    .line 79
    invoke-interface {p1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xW;->playableSeasonNumAbbrLabel:Ljava/lang/String;

    .line 80
    invoke-interface {p1}, Lo/AK;->ai()Z

    move-result v0

    iput-boolean v0, p0, Lo/xW;->isEpisodeNumberHidden:Z

    .line 81
    invoke-interface {p1}, Lo/AK;->U()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/xW;->seasonTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lo/xW;
    .locals 4

    .line 17
    new-instance v0, Lo/xW;

    invoke-direct {v0}, Lo/xW;-><init>()V

    .line 18
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v1

    .line 19
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lo/xW;->id:Ljava/lang/String;

    .line 24
    invoke-interface {v2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    iput-object v2, v0, Lo/xW;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 25
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/xW;->title:Ljava/lang/String;

    .line 26
    move-object v2, v1

    check-cast v2, Lo/agg;

    invoke-interface {v2}, Lo/agg;->bi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/xW;->tvCardUrl:Ljava/lang/String;

    .line 27
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/xW;->horzDispUrl:Ljava/lang/String;

    .line 28
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->f()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xW;->synopsys:Ljava/lang/String;

    .line 29
    invoke-static {v0, v1}, Lo/xU;->c(Lo/xW;Lo/AK;)Lo/xW;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
