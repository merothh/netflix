.class Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;
.super Ljava/lang/Object;
.source "DummyMdxVideoDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public episodeIsNSRE()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

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

    .prologue
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAvailabilityDateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookmarkPosition()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "http://dummyimage.com/150x214/bb0000/884444.png&text=Boxshot+Img"

    return-object v0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const-string/jumbo v0, "\u00a9 2015 Test"

    return-object v0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
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
    .line 422
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getEpisodeIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x6

    return v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "http://dummyimage.com/332x187/bb0000/884444.png&text=Horz+Disp+Img+Small"

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "http://dummyimage.com/665x375/bb0000/884444.png&text=Horz+Disp+Img"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "70178217"

    return-object v0
.end method

.method public getInterestingSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getNarrative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "Narrative"

    return-object v0
.end method

.method public getNextEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;)V

    return-object v0
.end method

.method public getPredictedRating()F
    .locals 1

    .prologue
    .line 158
    const/high16 v0, 0x40600000    # 3.5f

    return v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "70178217"

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x5

    return v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "70248301"

    return-object v0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "Synopsis"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "Dummy MDX Title, Super Extra-Long Version"

    return-object v0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string/jumbo v0, "http://dummyimage.com/265x149/0000ff/ffffff.png&text=TV+Card+Img"

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getUserRating()F
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public hasTrailers()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public hasWatched()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo3D()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo5dot1()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoHd()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoHdr10()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoUhd()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public setUserRating(F)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
