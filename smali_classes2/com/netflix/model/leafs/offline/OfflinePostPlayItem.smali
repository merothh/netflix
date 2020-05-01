.class public Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AP;
.implements Lcom/netflix/model/leafs/PostPlayItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayItem"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end field

.field private ancestorSynopsis:Ljava/lang/String;

.field private ancestorTitle:Ljava/lang/String;

.field private autoPlay:Z

.field private autoPlaySeconds:I

.field private availabilityDateMessaging:Ljava/lang/String;

.field private backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private badgeKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delivery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private episodeNumberHidden:Z

.field private episodes:I

.field private experienceType:Ljava/lang/String;

.field private impressionData:Ljava/lang/String;

.field private isNSRE:Z

.field private logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private matchPercentage:I

.field private maturityRating:Ljava/lang/String;

.field private newForPvr:Z

.field private nextEpisodeAutoPlay:Z

.field private nextEpisodeSeamless:Z

.field private offlineEpisodeCount:I

.field private runtime:I

.field private seamlessStart:I

.field private seasonSequenceAbbr:Ljava/lang/String;

.field private seasons:I

.field private seasonsLabel:Ljava/lang/String;

.field private supplementalMessage:Ljava/lang/String;

.field private synopsis:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uiLabel:Ljava/lang/String;

.field private userThumbRating:I

.field private videoId:Ljava/lang/Integer;

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private year:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->delivery:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->isNSRE:Z

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->badgeKeys:Ljava/util/List;

    .line 108
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->offlineEpisodeCount:I

    const-string v0, "postplay"

    .line 115
    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->uiLabel:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/AK;Ljava/lang/String;III)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->delivery:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->isNSRE:Z

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->badgeKeys:Ljava/util/List;

    .line 108
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->offlineEpisodeCount:I

    const-string v0, "postplay"

    .line 115
    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->uiLabel:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setVideoId(Ljava/lang/Integer;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->getActions()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;-><init>(Lo/AK;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "episode"

    .line 40
    invoke-virtual {p0, p3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setType(Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setAncestorTitle(Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setTitle(Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;

    invoke-direct {p1, p2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setDisplayArtAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V

    return-void
.end method

.method constructor <init>(Lo/AK;Ljava/lang/String;IIIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V
    .locals 10

    move-object v0, p0

    move-object/from16 v7, p7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->delivery:Ljava/util/Map;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->isNSRE:Z

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->badgeKeys:Ljava/util/List;

    .line 108
    iput v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->offlineEpisodeCount:I

    const-string v1, "postplay"

    .line 115
    iput-object v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->uiLabel:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setVideoId(Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->getActions()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;

    move-object v1, v9

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;-><init>(Lo/AK;IIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "episode"

    .line 52
    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setType(Ljava/lang/String;)V

    .line 53
    invoke-interface {p1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setAncestorTitle(Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setTitle(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;

    move-object v2, p2

    invoke-direct {v1, p2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setDisplayArtAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V

    move/from16 v1, p6

    .line 56
    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setRuntime(I)V

    .line 57
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v7, v1, :cond_0

    move/from16 v1, p8

    .line 58
    iput v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->offlineEpisodeCount:I

    .line 60
    :cond_0
    iput-object v7, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method private initializeUILabel()V
    .locals 1

    const-string v0, "postplay"

    .line 119
    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->uiLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAncestorSynopsis()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->ancestorSynopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getAncestorTitle()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->ancestorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 336
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->isAutoPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoPlaySeconds()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->autoPlaySeconds:I

    return v0
.end method

.method public getAvailabilityDateMessaging()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->availabilityDateMessaging:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getBadgeKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->badgeKeys:Ljava/util/List;

    return-object v0
.end method

.method public getDelivery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->delivery:Ljava/util/Map;

    return-object v0
.end method

.method public getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getEpisodes()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->episodes:I

    return v0
.end method

.method public getExperienceType()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->experienceType:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 3

    const/4 v0, 0x0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getTrackId()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpressionData()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->impressionData:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->matchPercentage:I

    return v0
.end method

.method public getMaturityRating()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->maturityRating:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_1

    .line 322
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mdp"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflineEpisodeCount()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->offlineEpisodeCount:I

    return v0
.end method

.method public getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayActionAtIndex(I)Lcom/netflix/model/leafs/PostPlayAction;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 292
    iget-object v2, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v2, :cond_1

    .line 293
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playTrailer"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->runtime:I

    return v0
.end method

.method public getSeamlessStart()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seamlessStart:I

    return v0
.end method

.method public getSeasonRenewalPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 411
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playTrailer"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonRenewalPostPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 397
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonSequenceAbbr()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seasonSequenceAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasons()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seasons:I

    return v0
.end method

.method public getSeasonsLabel()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seasonsLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->supplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLabel()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->uiLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->userThumbRating:I

    return v0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->videoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasNewBadge()Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->badgeKeys:Ljava/util/List;

    const-string v1, "NEW"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->autoPlay:Z

    return v0
.end method

.method public isEpisodeNumberHidden()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->episodeNumberHidden:Z

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->isNSRE:Z

    return v0
.end method

.method public isNewForPvr()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->newForPvr:Z

    return v0
.end method

.method public isNextEpisodeAutoPlay()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->nextEpisodeAutoPlay:Z

    return v0
.end method

.method public isNextEpisodeSeamless()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->nextEpisodeSeamless:Z

    return v0
.end method

.method public setAncestorSynopsis(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->ancestorSynopsis:Ljava/lang/String;

    return-void
.end method

.method public setAncestorTitle(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->ancestorTitle:Ljava/lang/String;

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->autoPlay:Z

    return-void
.end method

.method public setAutoPlaySeconds(I)V
    .locals 0

    .line 481
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->autoPlaySeconds:I

    return-void
.end method

.method public setAvailabilityDateMessaging(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->availabilityDateMessaging:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setDelivery(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->delivery:Ljava/util/Map;

    return-void
.end method

.method public setDisplayArtAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setEpisodes(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->episodes:I

    return-void
.end method

.method public setExperienceType(Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->experienceType:Ljava/lang/String;

    return-void
.end method

.method public setImpressionData(Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->impressionData:Ljava/lang/String;

    return-void
.end method

.method public setLogoAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setMaturityRating(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->maturityRating:Ljava/lang/String;

    return-void
.end method

.method public setNSRE(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->isNSRE:Z

    return-void
.end method

.method public setNextEpisodeAutoPlay(Z)V
    .locals 0

    .line 491
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->nextEpisodeAutoPlay:Z

    return-void
.end method

.method public setNextEpisodeSeamless(Z)V
    .locals 0

    .line 510
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->nextEpisodeSeamless:Z

    return-void
.end method

.method public setRuntime(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->runtime:I

    return-void
.end method

.method public setSeamlessStart(I)V
    .locals 0

    .line 515
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seamlessStart:I

    return-void
.end method

.method public setSeasonSequenceAbbr(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seasonSequenceAbbr:Ljava/lang/String;

    return-void
.end method

.method public setSeasons(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seasons:I

    return-void
.end method

.method public setSeasonsLabel(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->seasonsLabel:Ljava/lang/String;

    return-void
.end method

.method public setSupplementalMessage(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->supplementalMessage:Ljava/lang/String;

    return-void
.end method

.method public setSynopsis(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->synopsis:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserThumbRating(I)V
    .locals 0

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->videoId:Ljava/lang/Integer;

    return-void
.end method

.method public setYear(Ljava/lang/Integer;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->year:Ljava/lang/Integer;

    return-void
.end method
