.class public Lcom/netflix/model/branches/FalkorVideo;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorVideo.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/KubrickShowDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;
.implements Lcom/netflix/model/branches/FalkorObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorVideo"


# instance fields
.field private advisories:Lcom/netflix/model/leafs/Video$Advisories;

.field private billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

.field protected bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

.field private cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

.field private detail:Lcom/netflix/model/leafs/Video$Detail;

.field private episodes:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

.field private inQueue:Lcom/netflix/model/leafs/Video$InQueue;

.field private interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

.field private interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

.field private kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

.field private mementoVideoSwatches:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;"
        }
    .end annotation
.end field

.field protected offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

.field private performerStills:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private performers:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private postPlayExperience:Lcom/netflix/falkor/Ref;

.field private postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

.field private rating:Lcom/netflix/model/leafs/Video$UserRating;

.field private scenes:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorScene;",
            ">;"
        }
    .end annotation
.end field

.field private searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

.field private seasons:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private sims:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/TrackableListSummary;",
            ">;"
        }
    .end annotation
.end field

.field private summary:Lcom/netflix/model/leafs/Video$Summary;

.field private supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

.field private vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

.field private videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 111
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "FalkorVideo"

    const-string/jumbo v1, "Creating FalkorVideo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method private getBookmarkLastUpdateTime()J
    .locals 4

    .prologue
    .line 457
    const-wide/16 v0, -0x1

    .line 459
    iget-object v2, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v2, :cond_1

    .line 460
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v0

    move-wide v2, v0

    .line 462
    :goto_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    const-string/jumbo v1, "bookmark"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v2

    .line 468
    :cond_0
    return-wide v2

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method private getBookmarkPosition()I
    .locals 3

    .prologue
    .line 482
    const/4 v0, -0x1

    .line 484
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v0

    move v1, v0

    .line 487
    :goto_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    const-string/jumbo v2, "bookmark"

    invoke-virtual {v0, v2}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    check-cast v0, Lcom/netflix/model/leafs/Video$Bookmark;

    .line 489
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v1

    .line 493
    :cond_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 621
    :goto_0
    return-object v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    const-string/jumbo v2, "current"

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/netflix/falkor/Sentinel;

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 618
    goto :goto_0

    .line 620
    :cond_2
    check-cast v0, Lcom/netflix/falkor/Ref;

    .line 621
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/Ref;->getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorEpisode;

    goto :goto_0
.end method

.method private getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;
    .locals 2

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    .line 606
    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "detail"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Episode$Detail;

    check-cast v0, Lcom/netflix/model/leafs/Episode$Detail;

    goto :goto_0
.end method

.method private getSimilarsSummary()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    if-nez v0, :cond_0

    .line 905
    const/4 v0, 0x0

    .line 907
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/SummarizedList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummary;

    goto :goto_0
.end method

.method private isPostPlayInvalid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1072
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1073
    const-string/jumbo v1, "video ID"

    invoke-direct {p0, p1, v1}, Lcom/netflix/model/branches/FalkorVideo;->logInvalidPostPlayMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :goto_0
    return v0

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1077
    const-string/jumbo v1, "video type"

    invoke-direct {p0, p1, v1}, Lcom/netflix/model/branches/FalkorVideo;->logInvalidPostPlayMethod(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logInvalidPostPlayMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    const-string/jumbo v1, "SPY-7478 - Can\'t get post play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "getType="

    .line 1087
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",getId="

    .line 1088
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",getCurrentEpisodeId="

    .line 1089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    const-string/jumbo v1, "FalkorVideo"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-interface {v1}, Lcom/netflix/falkor/ModelProxy;->getServiceProvider()Lcom/netflix/falkor/ServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 1093
    return-void
.end method


# virtual methods
.method public createModifiedBigStillUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/UriUtil;->buildStillUrlFromPos(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createModifiedStillUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/UriUtil;->buildStillUrlFromPos(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 126
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 126
    :sswitch_0
    const-string/jumbo v1, "cleanBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "kubrick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "vertStoryArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "postPlayImpression"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "castStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "mementoVideoSwatches"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "interactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    goto/16 :goto_1

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_1

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_1

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    goto/16 :goto_1

    .line 131
    :pswitch_4
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    goto/16 :goto_1

    .line 132
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    goto/16 :goto_1

    .line 133
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    goto/16 :goto_1

    .line 134
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto/16 :goto_1

    .line 135
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto/16 :goto_1

    .line 136
    :pswitch_9
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto/16 :goto_1

    .line 137
    :pswitch_a
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    goto/16 :goto_1

    .line 138
    :pswitch_b
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    goto/16 :goto_1

    .line 139
    :pswitch_c
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto/16 :goto_1

    .line 140
    :pswitch_d
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    goto/16 :goto_1

    .line 141
    :pswitch_e
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    goto/16 :goto_1

    .line 142
    :pswitch_f
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

    goto/16 :goto_1

    .line 143
    :pswitch_10
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 144
    :pswitch_11
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 145
    :pswitch_12
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 146
    :pswitch_13
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 147
    :pswitch_14
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    goto/16 :goto_1

    .line 148
    :pswitch_15
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 149
    :pswitch_16
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 150
    :pswitch_17
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->mementoVideoSwatches:Lcom/netflix/model/branches/UnsummarizedList;

    goto/16 :goto_1

    .line 151
    :pswitch_18
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    goto/16 :goto_1

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        -0x756b9acf -> :sswitch_e
        -0x6eb9585a -> :sswitch_2
        -0x53efc681 -> :sswitch_d
        -0x4f95e7af -> :sswitch_4
        -0x4f5fd39f -> :sswitch_0
        -0x37ea4e63 -> :sswitch_5
        -0x36200699 -> :sswitch_13
        -0x26a8e0e9 -> :sswitch_1
        -0x25b9fe28 -> :sswitch_11
        -0x24e8e7d6 -> :sswitch_b
        -0x22faf016 -> :sswitch_16
        -0x20c3ea70 -> :sswitch_9
        -0x1683d2e9 -> :sswitch_3
        -0x167e6434 -> :sswitch_17
        -0x9dce382 -> :sswitch_14
        0x2e7b3f -> :sswitch_15
        0x26d551d -> :sswitch_f
        0x81f8c26 -> :sswitch_8
        0x16d39e57 -> :sswitch_a
        0x1c8fe7e8 -> :sswitch_10
        0x37d7fbb2 -> :sswitch_c
        0x6deacee2 -> :sswitch_18
        0x72cf8aec -> :sswitch_6
        0x7552f1f0 -> :sswitch_12
        0x7787a536 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdvisories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Advisories;->getAdvisoryList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 573
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    goto :goto_0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 821
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->bifUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    return-object v0
.end method

.method public getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    return-object v0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 827
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 655
    if-nez v0, :cond_1

    move-object v0, v1

    .line 656
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 659
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_3

    .line 662
    :goto_2
    return-object v1

    .line 655
    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->certification:Ljava/lang/String;

    goto :goto_1

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v1, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->certification:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method public getCleanBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$CwCleanBoxart;->getCleanBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1104
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 928
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentEpisodeBadges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 977
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeBadges()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 965
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 946
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeNumber()I
    .locals 1

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 940
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentEpisodeStoryImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 958
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSoryImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 971
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 952
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentSeasonNumber()I
    .locals 1

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 983
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSeasonNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SupplementalVideos;->defaultTrailer:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getDetail()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    return-object v0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 877
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndtime()I
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 527
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    goto :goto_0
.end method

.method public getEpisodeBadges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 539
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getEvidenceGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Evidence;->getIconFontGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    move-result-object v0

    goto :goto_0
.end method

.method public getEvidenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Evidence;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 674
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/netflix/model/leafs/Video$Detail;->expirationTime:J

    goto :goto_0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeroImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$HeroImages;->heroImgs:Ljava/util/List;

    goto :goto_0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 805
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->hiResHorzUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 799
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getHorzDispSmallUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInteractiveMoments()Lcom/netflix/model/leafs/InteractivePlaybackMoments;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    return-object v0
.end method

.method public getInteractivePostplay()Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1068
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    iget-object v0, v0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    goto :goto_0
.end method

.method public getInterestingSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getInterestingSmallUrl()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Detail;->getInterestingUrl()Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    if-eqz v1, :cond_0

    .line 212
    const-string/jumbo v1, "cleanBoxart"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    if-eqz v1, :cond_1

    .line 215
    const-string/jumbo v1, "advisories"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-eqz v1, :cond_2

    .line 218
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-eqz v1, :cond_3

    .line 221
    const-string/jumbo v1, "kubrick"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 224
    const-string/jumbo v1, "detail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    if-eqz v1, :cond_5

    .line 227
    const-string/jumbo v1, "rating"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    if-eqz v1, :cond_6

    .line 230
    const-string/jumbo v1, "inQueue"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_6
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-eqz v1, :cond_7

    .line 233
    const-string/jumbo v1, "bookmark"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_7
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    if-eqz v1, :cond_8

    .line 236
    const-string/jumbo v1, "offlineAvailable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_8
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v1, :cond_9

    .line 239
    const-string/jumbo v1, "searchTitle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_9
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    if-eqz v1, :cond_a

    .line 242
    const-string/jumbo v1, "evidence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_a
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    if-eqz v1, :cond_b

    .line 245
    const-string/jumbo v1, "heroImgs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_b
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    if-eqz v1, :cond_c

    .line 248
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_c
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    if-eqz v1, :cond_d

    .line 251
    const-string/jumbo v1, "vertStoryArt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_d
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    if-eqz v1, :cond_e

    .line 254
    const-string/jumbo v1, "interactiveMoments"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_e
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

    if-eqz v1, :cond_f

    .line 257
    const-string/jumbo v1, "postPlayImpression"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_f
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v1, :cond_10

    .line 260
    const-string/jumbo v1, "similars"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_10
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_11

    .line 263
    const-string/jumbo v1, "episodes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_11
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_12

    .line 266
    const-string/jumbo v1, "postPlayExperience"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_12
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_13

    .line 269
    const-string/jumbo v1, "cast"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_13
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_14

    .line 272
    const-string/jumbo v1, "castStills"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_14
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->mementoVideoSwatches:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_15

    .line 275
    const-string/jumbo v1, "mementoVideoSwatches"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_15
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_16

    .line 278
    const-string/jumbo v1, "seasons"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_16
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_17

    .line 281
    const-string/jumbo v1, "scenes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_17
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    if-eqz v1, :cond_18

    .line 284
    const-string/jumbo v1, "interactive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_18
    return-object v0
.end method

.method public getKubrickStoryImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->storyImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLogicalStart()I
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 533
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    goto :goto_0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 668
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    goto :goto_0
.end method

.method public getNarrative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->synopsisNarrative:Ljava/lang/String;

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->narrative:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumDirectors()I
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDirectors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getCsvCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNumOfEpisodes()I
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 934
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    goto :goto_0
.end method

.method public getNumOfSeasons()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 754
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, v1, Lcom/netflix/model/leafs/Video$Detail;->seasonCount:I

    goto :goto_0
.end method

.method public getNumSeasonsLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_1

    .line 920
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    .line 922
    :goto_0
    return-object v0

    .line 920
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    goto :goto_0

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->seasonNumLabel:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->seasonNumLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-object v0

    .line 168
    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 169
    const-string/jumbo v0, "FalkorVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating leaf for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 204
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :sswitch_0
    const-string/jumbo v1, "cleanBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "kubrick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string/jumbo v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "vertStoryArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "postPlayImpression"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "castStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "mementoVideoSwatches"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v1, "interactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x18

    goto/16 :goto_1

    .line 173
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$CwCleanBoxart;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    goto/16 :goto_0

    .line 174
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/Video$Advisories;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Advisories;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_0

    .line 175
    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/Video$Summary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Summary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_0

    .line 176
    :pswitch_3
    new-instance v0, Lcom/netflix/model/leafs/Video$KubrickSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$KubrickSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    goto/16 :goto_0

    .line 177
    :pswitch_4
    new-instance v0, Lcom/netflix/model/leafs/Video$Detail;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Detail;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    goto/16 :goto_0

    .line 178
    :pswitch_5
    new-instance v0, Lcom/netflix/model/leafs/Video$UserRating;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$UserRating;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    goto/16 :goto_0

    .line 179
    :pswitch_6
    new-instance v0, Lcom/netflix/model/leafs/Video$InQueue;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$InQueue;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    goto/16 :goto_0

    .line 180
    :pswitch_7
    new-instance v0, Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Bookmark;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto/16 :goto_0

    .line 181
    :pswitch_8
    new-instance v0, Lcom/netflix/model/leafs/Video$OfflineAvailable;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$OfflineAvailable;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto/16 :goto_0

    .line 182
    :pswitch_9
    new-instance v0, Lcom/netflix/model/leafs/Video$SearchTitle;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$SearchTitle;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto/16 :goto_0

    .line 183
    :pswitch_a
    new-instance v0, Lcom/netflix/model/leafs/Video$Evidence;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Evidence;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    goto/16 :goto_0

    .line 184
    :pswitch_b
    new-instance v0, Lcom/netflix/model/leafs/Video$HeroImages;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$HeroImages;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    goto/16 :goto_0

    .line 185
    :pswitch_c
    new-instance v0, Lcom/netflix/model/leafs/Video$SupplementalVideos;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$SupplementalVideos;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto/16 :goto_0

    .line 186
    :pswitch_d
    new-instance v0, Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$VerticalStoryArt;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    goto/16 :goto_0

    .line 187
    :pswitch_e
    new-instance v0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    invoke-direct {v0}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    goto/16 :goto_0

    .line 188
    :pswitch_f
    new-instance v0, Lcom/netflix/model/leafs/PostPlayImpression;

    invoke-direct {v0}, Lcom/netflix/model/leafs/PostPlayImpression;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayImpression:Lcom/netflix/model/leafs/PostPlayImpression;

    goto/16 :goto_0

    .line 189
    :pswitch_10
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    sget-object v2, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->TrackableListSummary:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_0

    .line 191
    :pswitch_11
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 192
    :pswitch_12
    new-instance v0, Lcom/netflix/falkor/Ref;

    invoke-direct {v0}, Lcom/netflix/falkor/Ref;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    goto/16 :goto_0

    .line 193
    :pswitch_13
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 194
    :pswitch_14
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 195
    :pswitch_15
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->MementoVideoSwatch:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->mementoVideoSwatches:Lcom/netflix/model/branches/UnsummarizedList;

    goto/16 :goto_0

    .line 196
    :pswitch_16
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 197
    :pswitch_17
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorScene(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 198
    :pswitch_18
    new-instance v0, Lcom/netflix/model/branches/InteractiveInfo;

    invoke-direct {v0}, Lcom/netflix/model/branches/InteractiveInfo;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    goto/16 :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        -0x756b9acf -> :sswitch_e
        -0x6eb9585a -> :sswitch_2
        -0x53efc681 -> :sswitch_d
        -0x4f95e7af -> :sswitch_4
        -0x4f5fd39f -> :sswitch_0
        -0x37ea4e63 -> :sswitch_5
        -0x36200699 -> :sswitch_17
        -0x26a8e0e9 -> :sswitch_1
        -0x25b9fe28 -> :sswitch_11
        -0x24e8e7d6 -> :sswitch_b
        -0x22faf016 -> :sswitch_14
        -0x20c3ea70 -> :sswitch_9
        -0x1683d2e9 -> :sswitch_3
        -0x167e6434 -> :sswitch_15
        -0x9dce382 -> :sswitch_12
        0x2e7b3f -> :sswitch_13
        0x26d551d -> :sswitch_f
        0x81f8c26 -> :sswitch_8
        0x16d39e57 -> :sswitch_a
        0x1c8fe7e8 -> :sswitch_10
        0x37d7fbb2 -> :sswitch_c
        0x6deacee2 -> :sswitch_18
        0x72cf8aec -> :sswitch_6
        0x7552f1f0 -> :sswitch_16
        0x7787a536 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 0

    .prologue
    .line 871
    return-object p0
.end method

.method public getPlayableBookmarkPosition()I
    .locals 6

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmarkPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getEndtime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getRuntime()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v0

    .line 474
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const-string/jumbo v1, "FalkorVideo"

    const-string/jumbo v2, "id %s bookmark %d playPos %d endtime %d runtime %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmarkPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getEndtime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getRuntime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 475
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    return v0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmarkLastUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostPlayContexts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayContext;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1056
    const-string/jumbo v0, "contexts"

    invoke-direct {p0, v0}, Lcom/netflix/model/branches/FalkorVideo;->isPostPlayInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1060
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "postPlayExperience"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "postplayContext"

    aput-object v3, v1, v2

    .line 1059
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostPlayExperienceData()Lcom/netflix/model/leafs/PostPlayExperience;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1045
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "postPlayExperiences"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "experienceData"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 1047
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayExperience;

    .line 1051
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPostPlayVideos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1036
    const-string/jumbo v0, "videos"

    invoke-direct {p0, v0}, Lcom/netflix/model/branches/FalkorVideo;->isPostPlayInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 1040
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1041
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "postPlayExperience"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "videoRef"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    .line 1040
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPredictedRating()F
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->predictedRating:F

    .line 788
    :goto_0
    return v0

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 788
    if-nez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->predictedRating:F

    goto :goto_0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRuntime()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 517
    if-nez v1, :cond_0

    move v1, v0

    .line 518
    :goto_0
    if-gtz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v1, :cond_1

    .line 521
    :goto_1
    return v0

    .line 517
    :cond_0
    iget v1, v1, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->runtime:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/model/leafs/Episode$Detail;->abbrSeqLabel:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Episode$Detail;->abbrSeqLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSeasonCount()I
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->seasonCount:I

    goto :goto_0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    .line 545
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSeasonNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getSimilars()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v1

    .line 888
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->buildVideoSimsPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 887
    invoke-interface {v1, v0}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 888
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimilarsListPos()I
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public getSimilarsRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getSimilarsSummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    .line 900
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimilarsTrackId()I
    .locals 1

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getSimilarsSummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    .line 894
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getSummary()Lcom/netflix/model/leafs/Video$Summary;

    move-result-object v0

    .line 811
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Summary;->storyImgDispUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 643
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSummary()Lcom/netflix/model/leafs/Video$Summary;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 685
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 649
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->titleCroppedUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    .line 1025
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->titleUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrickplayBigImgBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->baseUrlBig:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrickplayImgBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 425
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    .line 379
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserRating()F
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    iget v0, v0, Lcom/netflix/model/leafs/Video$UserRating;->userRating:F

    goto :goto_0
.end method

.method public getVerticalStoryArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$VerticalStoryArt;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 627
    if-nez v0, :cond_2

    move v0, v1

    .line 628
    :goto_0
    if-gtz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_3

    move v0, v1

    .line 631
    :cond_0
    :goto_1
    if-gtz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-nez v0, :cond_4

    move v0, v1

    .line 634
    :cond_1
    :goto_2
    if-gtz v0, :cond_6

    .line 635
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-nez v0, :cond_5

    .line 637
    :goto_3
    return v1

    .line 627
    :cond_2
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    goto :goto_0

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    iget v0, v0, Lcom/netflix/model/leafs/Video$Summary;->videoYear:I

    goto :goto_1

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->releaseYear:I

    goto :goto_2

    .line 635
    :cond_5
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget v1, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->year:I

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_3
.end method

.method public hasTrailers()Z
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 742
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    goto :goto_0
.end method

.method public hasWatched()Z
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->hasWatched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 600
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    goto :goto_0
.end method

.method public isAutoPlayEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 550
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 552
    if-nez v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    goto :goto_0

    .line 554
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isAutoPlayEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isAvailableOffline()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$OfflineAvailable;->isAvailableOffline()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    goto :goto_0
.end method

.method protected isEpisode()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->isEpisode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 561
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 563
    if-nez v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isExemptFromInterrupterLimit:Z

    goto :goto_0

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 566
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isExemptFromInterrupterLimit()Z

    move-result v0

    goto :goto_0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    goto :goto_0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextPlayableEpisode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 578
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 580
    if-nez v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isNextPlayableEpisode()Z

    move-result v0

    goto :goto_0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    .line 699
    :goto_0
    return v0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->isOriginal:Z

    goto :goto_0

    .line 699
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 587
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    .line 589
    if-nez v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 589
    :cond_1
    iget-boolean v0, v1, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    goto :goto_0

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v1

    .line 592
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/Episode$Detail;->isPinProtected()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_0

    .line 729
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    .line 736
    :goto_0
    return v0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->isPreRelease:Z

    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 748
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    goto :goto_0
.end method

.method public isVideo3D()Z
    .locals 1

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 848
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->is3DAvailable:Z

    goto :goto_0
.end method

.method public isVideo5dot1()Z
    .locals 1

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 854
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    goto :goto_0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 866
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    goto :goto_0
.end method

.method public isVideoHd()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$KubrickSummary;->isHd:Z

    .line 836
    :goto_0
    return v0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 836
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    goto :goto_0
.end method

.method public isVideoHdr10()Z
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 860
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    goto :goto_0
.end method

.method public isVideoUhd()Z
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    .line 842
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 292
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_1
    return-void

    .line 292
    :sswitch_0
    const-string/jumbo v1, "cleanBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "kubrick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "billboardSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "vertStoryArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "castStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "mementoVideoSwatches"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "interactive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    .line 293
    :pswitch_0
    check-cast p2, Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->cleanBoxshot:Lcom/netflix/model/leafs/Video$CwCleanBoxart;

    goto/16 :goto_1

    .line 294
    :pswitch_1
    check-cast p2, Lcom/netflix/model/leafs/Video$Advisories;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_1

    .line 295
    :pswitch_2
    check-cast p2, Lcom/netflix/model/leafs/Video$Summary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto/16 :goto_1

    .line 296
    :pswitch_3
    check-cast p2, Lcom/netflix/model/leafs/Video$KubrickSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->kubrick:Lcom/netflix/model/leafs/Video$KubrickSummary;

    goto/16 :goto_1

    .line 297
    :pswitch_4
    check-cast p2, Lcom/netflix/model/leafs/Video$Detail;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->detail:Lcom/netflix/model/leafs/Video$Detail;

    goto/16 :goto_1

    .line 298
    :pswitch_5
    check-cast p2, Lcom/netflix/model/leafs/Video$UserRating;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    goto/16 :goto_1

    .line 299
    :pswitch_6
    check-cast p2, Lcom/netflix/model/leafs/Video$InQueue;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->inQueue:Lcom/netflix/model/leafs/Video$InQueue;

    goto/16 :goto_1

    .line 300
    :pswitch_7
    check-cast p2, Lcom/netflix/model/leafs/Video$Bookmark;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto/16 :goto_1

    .line 301
    :pswitch_8
    check-cast p2, Lcom/netflix/model/leafs/Video$OfflineAvailable;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->offlineAvailable:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto/16 :goto_1

    .line 302
    :pswitch_9
    check-cast p2, Lcom/netflix/model/leafs/Video$SearchTitle;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->searchTitle:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto/16 :goto_1

    .line 303
    :pswitch_a
    check-cast p2, Lcom/netflix/model/leafs/Video$Evidence;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->videoEvidence:Lcom/netflix/model/leafs/Video$Evidence;

    goto/16 :goto_1

    .line 304
    :pswitch_b
    check-cast p2, Lcom/netflix/model/leafs/Video$HeroImages;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->heroImages:Lcom/netflix/model/leafs/Video$HeroImages;

    goto/16 :goto_1

    .line 305
    :pswitch_c
    check-cast p2, Lcom/netflix/model/leafs/Video$SupplementalVideos;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->supplementalVideos:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto/16 :goto_1

    .line 306
    :pswitch_d
    check-cast p2, Lcom/netflix/model/leafs/originals/BillboardSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    goto/16 :goto_1

    .line 307
    :pswitch_e
    check-cast p2, Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->vertStoryArtUrl:Lcom/netflix/model/leafs/Video$VerticalStoryArt;

    goto/16 :goto_1

    .line 308
    :pswitch_f
    check-cast p2, Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->interactivePlaybackMoments:Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    goto/16 :goto_1

    .line 309
    :pswitch_10
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->sims:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 310
    :pswitch_11
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 311
    :pswitch_12
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->seasons:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 312
    :pswitch_13
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->scenes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 313
    :pswitch_14
    check-cast p2, Lcom/netflix/falkor/Ref;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->postPlayExperience:Lcom/netflix/falkor/Ref;

    goto/16 :goto_1

    .line 314
    :pswitch_15
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performers:Lcom/netflix/falkor/BranchMap;

    .line 315
    :pswitch_16
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->performerStills:Lcom/netflix/falkor/BranchMap;

    .line 316
    :pswitch_17
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->mementoVideoSwatches:Lcom/netflix/model/branches/UnsummarizedList;

    goto/16 :goto_1

    .line 317
    :pswitch_18
    check-cast p2, Lcom/netflix/model/branches/InteractiveInfo;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorVideo;->interactiveInfo:Lcom/netflix/model/branches/InteractiveInfo;

    goto/16 :goto_1

    .line 292
    :sswitch_data_0
    .sparse-switch
        -0x756b9acf -> :sswitch_f
        -0x6eb9585a -> :sswitch_2
        -0x53efc681 -> :sswitch_e
        -0x4f95e7af -> :sswitch_4
        -0x4f5fd39f -> :sswitch_0
        -0x4265cc99 -> :sswitch_d
        -0x37ea4e63 -> :sswitch_5
        -0x36200699 -> :sswitch_13
        -0x26a8e0e9 -> :sswitch_1
        -0x25b9fe28 -> :sswitch_11
        -0x24e8e7d6 -> :sswitch_b
        -0x22faf016 -> :sswitch_16
        -0x20c3ea70 -> :sswitch_9
        -0x1683d2e9 -> :sswitch_3
        -0x167e6434 -> :sswitch_17
        -0x9dce382 -> :sswitch_14
        0x2e7b3f -> :sswitch_15
        0x81f8c26 -> :sswitch_8
        0x16d39e57 -> :sswitch_a
        0x1c8fe7e8 -> :sswitch_10
        0x37d7fbb2 -> :sswitch_c
        0x6deacee2 -> :sswitch_18
        0x72cf8aec -> :sswitch_6
        0x7552f1f0 -> :sswitch_12
        0x7787a536 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public setUserRating(F)V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorVideo;->rating:Lcom/netflix/model/leafs/Video$UserRating;

    iput p1, v0, Lcom/netflix/model/leafs/Video$UserRating;->userRating:F

    .line 780
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorVideo [getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getTitle()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
