.class public Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;
.super Ljava/lang/Object;
.source "DiscoveryRecord.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;


# instance fields
.field pivot1Summary:Lcom/netflix/model/leafs/DiscoverySummary;

.field pivot2Summary:Lcom/netflix/model/leafs/DiscoverySummary;

.field video:Lcom/netflix/model/branches/FalkorVideo;


# direct methods
.method public constructor <init>(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/model/leafs/DiscoverySummary;Lcom/netflix/model/leafs/DiscoverySummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot1Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot2Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    return-void
.end method


# virtual methods
.method public getAdvisories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getAdvisories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getAutoPlayMaxCount()I

    move-result v0

    return v0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndtime()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getEndtime()I

    move-result v0

    return v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getEpisodeNumber()I

    move-result v0

    return v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getExpirationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFalkorVideo()Lcom/netflix/model/branches/FalkorVideo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getHorzDispSmallUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogicalStart()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getLogicalStart()I

    move-result v0

    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getParentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPivot1BoxartUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot1Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getPivotBoxartUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPivot1CollectionId()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot1Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getPivotCollectionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPivot1Title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot1Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getPivotTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPivot1TrackId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot1Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getTrackId()I

    move-result v0

    return v0
.end method

.method public getPivot2BoxartUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot2Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getPivotBoxartUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPivot2CollectionId()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot2Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getPivotCollectionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPivot2Title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot2Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getPivotTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPivot2TrackId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->pivot2Summary:Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/DiscoverySummary;->getTrackId()I

    move-result v0

    return v0
.end method

.method public getPlayableBookmarkPosition()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getPlayableBookmarkPosition()I

    move-result v0

    return v0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getPlayableBookmarkUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getPlayableTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getRuntime()I

    move-result v0

    return v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getSeasonNumber()I

    move-result v0

    return v0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getStoryDispUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public getVertStoryArtUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getVerticalStoryArtUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWatched()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->hasWatched()Z

    move-result v0

    return v0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isAdvisoryDisabled()Z

    move-result v0

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isAgeProtected()Z

    move-result v0

    return v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isAutoPlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isAvailableOffline()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isAvailableOffline()Z

    move-result v0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isAvailableToStream()Z

    move-result v0

    return v0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isExemptFromInterrupterLimit()Z

    move-result v0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isNSRE()Z

    move-result v0

    return v0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isNextPlayableEpisode()Z

    move-result v0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isPinProtected()Z

    move-result v0

    return v0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isPlayableEpisode()Z

    move-result v0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isPreRelease()Z

    move-result v0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;->video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->isSupplementalVideo()Z

    move-result v0

    return v0
.end method
