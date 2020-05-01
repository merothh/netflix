.class public Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;
.super Ljava/lang/Object;
.source "DummyEpisodeDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;


# instance fields
.field private final epNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;->epNumber:I

    .line 26
    return-void
.end method

.method public static createDummyArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 17
    new-instance v2, Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method


# virtual methods
.method public episodeIsNSRE()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
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
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAvailabilityDateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookmarkPosition()I
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string/jumbo v0, "\u00a9 2015 Test"

    return-object v0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
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
    .line 326
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getEpisodeIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;->epNumber:I

    return v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;->epNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterestingSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getNarrative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "Narrative"

    return-object v0
.end method

.method public getNextEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DummyPlayable;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/DummyPlayable;-><init>()V

    return-object v0
.end method

.method public getPredictedRating()F
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "Synopsis"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Episode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DummyEpisodeDetails;->epNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserRating()F
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public hasTrailers()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public hasWatched()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo3D()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo5dot1()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoHd()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoHdr10()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoUhd()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public setUserRating(F)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
