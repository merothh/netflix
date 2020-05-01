.class public Lcom/netflix/model/branches/FalkorKidsCharacter;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorKidsCharacter.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;
.implements Lcom/netflix/model/branches/FalkorObject;


# static fields
.field private static final REVERSE_SORT_BY_YEAR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/netflix/model/branches/FalkorVideo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FalkorKidsCharacter"


# instance fields
.field private advisories:Lcom/netflix/model/leafs/Video$Advisories;

.field public kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

.field public kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

.field public videoGallery:Lcom/netflix/model/branches/SummarizedList;
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

.field public watchNext:Lcom/netflix/falkor/Ref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/model/branches/FalkorKidsCharacter$1;

    invoke-direct {v0}, Lcom/netflix/model/branches/FalkorKidsCharacter$1;-><init>()V

    sput-object v0, Lcom/netflix/model/branches/FalkorKidsCharacter;->REVERSE_SORT_BY_YEAR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-void
.end method

.method private getCharacterFullBodyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getCharacterImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHasWatchedRecently()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/KidsCharacter$Detail;->hasWatchedRecently:Z

    goto :goto_0
.end method

.method private getVideoGallerySummary()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 2

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->videoGallery:Lcom/netflix/model/branches/SummarizedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->videoGallery:Lcom/netflix/model/branches/SummarizedList;

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/SummarizedList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummary;

    goto :goto_0
.end method

.method private getWatchNextBookmark()Lcom/netflix/model/leafs/Video$Bookmark;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/branches/FalkorVideo;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    goto :goto_0
.end method

.method private getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getDetail()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    goto :goto_0
.end method

.method private getWatchNextSquareUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method private getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;
    .locals 2

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->watchNext:Lcom/netflix/falkor/Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->watchNext:Lcom/netflix/falkor/Ref;

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/Ref;->getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    goto :goto_0
.end method

.method private getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/netflix/model/branches/FalkorEpisode;

    goto :goto_0
.end method

.method private isFirstPlay()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getHasWatchedRecently()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getEpisodeNumber()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getPlayableBookmarkPosition()I

    move-result v1

    if-gtz v1, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "detail"

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
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "watchNext"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "gallery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->watchNext:Lcom/netflix/falkor/Ref;

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->videoGallery:Lcom/netflix/model/branches/SummarizedList;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_1
        -0x4f95e7af -> :sswitch_2
        -0x37ea4e63 -> :sswitch_4
        -0x26a8e0e9 -> :sswitch_0
        -0x1683d2e9 -> :sswitch_3
        -0x10bd3b9e -> :sswitch_5
        -0xbb388ae -> :sswitch_6
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
    .end packed-switch
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

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Advisories;->getAdvisoryList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

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

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->bifUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCharacterId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharacterImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getCharacterImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharacterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndtime()I
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    goto :goto_0
.end method

.method public getEpisodeNumber()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorEpisode;->getEpisodeNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGallery()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FalkorKidsCharacter"

    const-string/jumbo v1, "getGallery() kidsCharacterId is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/CachedModelProxy;->buildKidsCharacterVideoGalleryPql(Ljava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "FalkorKidsCharacter"

    const-string/jumbo v6, "unexpected videoType=%s in getGallery"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/netflix/model/branches/FalkorKidsCharacter;->REVERSE_SORT_BY_YEAR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v0, Lcom/netflix/model/branches/FalkorKidsCharacter;->REVERSE_SORT_BY_YEAR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public getGalleryRequestId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getVideoGallerySummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGalleryTrackId()I
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getVideoGallerySummary()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummary;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

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

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

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

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getHorzDispSmallUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterId()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "advisories"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "detail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->watchNext:Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "watchNext"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->videoGallery:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "gallery"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getLogicalStart()I
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorKidsCharacter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FalkorKidsCharacter"

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

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "detail"

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
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "watchNext"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "gallery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/Video$Advisories;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Advisories;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/KidsCharacter$Detail;

    invoke-direct {v0}, Lcom/netflix/model/leafs/KidsCharacter$Detail;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/netflix/falkor/Ref;

    invoke-direct {v0}, Lcom/netflix/falkor/Ref;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->watchNext:Lcom/netflix/falkor/Ref;

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    sget-object v2, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->TrackableListSummary:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->videoGallery:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_1
        -0x4f95e7af -> :sswitch_2
        -0x37ea4e63 -> :sswitch_4
        -0x26a8e0e9 -> :sswitch_0
        -0x1683d2e9 -> :sswitch_3
        -0x10bd3b9e -> :sswitch_5
        -0xbb388ae -> :sswitch_6
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
    .end packed-switch
.end method

.method public getParentId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorEpisode;->getShowId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorEpisode;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 0

    return-object p0
.end method

.method public getPlayableBookmarkPosition()I
    .locals 3

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getEndtime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getRuntime()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRuntime()I
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    goto :goto_0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorEpisode;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeasonNumber()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideoAsEpisode()Lcom/netflix/model/branches/FalkorEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorEpisode;->getSeasonNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getWatchNextDispUrl()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FalkorKidsCharacter"

    const-string/jumbo v1, "[%s %s], firstPlay:%b (watchedRecently:%b), S%d:E%d, pos:%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->isFirstPlay()Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getHasWatchedRecently()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getSeasonNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getPlayableBookmarkPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->isFirstPlay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterFullBodyUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextSquareUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasWatched()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

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

    const/4 v0, 0x0

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    goto :goto_0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    goto :goto_0
.end method

.method public isAvailableOffline()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isAvailableOffline()Z

    move-result v0

    goto :goto_0
.end method

.method public isAvailableToStream()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableToStream()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isExemptFromInterrupterLimit:Z

    goto :goto_0
.end method

.method public isNSRE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    goto :goto_0
.end method

.method public isOriginal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextDetails()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    goto :goto_0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getWatchNextVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isEpisode()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreRelease()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "watchNext"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "gallery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    check-cast p2, Lcom/netflix/model/leafs/Video$Advisories;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->advisories:Lcom/netflix/model/leafs/Video$Advisories;

    goto :goto_1

    :pswitch_1
    check-cast p2, Lcom/netflix/model/leafs/KidsCharacter$Summary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsSummary:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    goto :goto_1

    :pswitch_2
    check-cast p2, Lcom/netflix/model/leafs/KidsCharacter$Detail;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->kidsDetail:Lcom/netflix/model/leafs/KidsCharacter$Detail;

    goto :goto_1

    :pswitch_3
    check-cast p2, Lcom/netflix/falkor/Ref;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->watchNext:Lcom/netflix/falkor/Ref;

    goto :goto_1

    :pswitch_4
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorKidsCharacter;->videoGallery:Lcom/netflix/model/branches/SummarizedList;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_1
        -0x4f95e7af -> :sswitch_2
        -0x26a8e0e9 -> :sswitch_0
        -0x10bd3b9e -> :sswitch_3
        -0xbb388ae -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorKidsCharacter [getType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getCharacterId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getCharacterTitle()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorKidsCharacter;->getCharacterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
