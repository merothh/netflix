.class public Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/PostPlayAction;


# instance fields
.field private final additionalTrackIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ancestorTitle:Ljava/lang/String;

.field private final autoPlay:Z

.field private autoPlaySeconds:I

.field private bookmarkPosition:I

.field private displayText:Ljava/lang/String;

.field private doNotIncrementInterrupter:Z

.field private episode:I

.field private forceInterrupt:Z

.field private inMyList:Z

.field private interruptDisplayText:Ljava/lang/String;

.field private interruptThreshold:I

.field private itemIndex:I

.field private logicalStart:J

.field private minutesRemaining:J

.field protected name:Ljava/lang/String;

.field private final offlinePostPlayVideo:Lo/agv;

.field private requestId:Ljava/lang/String;

.field private seamlessStart:I

.field private season:I

.field private seasonSequenceAbbr:Ljava/lang/String;

.field private seasonSequenceLong:Ljava/lang/String;

.field private trackId:I

.field protected type:Ljava/lang/String;

.field private videoId:I

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lo/AK;III)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x82

    .line 78
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->trackId:I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->additionalTrackIds:Ljava/util/Map;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->inMyList:Z

    .line 92
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->doNotIncrementInterrupter:Z

    .line 94
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->autoPlay:Z

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seamlessStart:I

    const-string v0, "play"

    .line 27
    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->type:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->name:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 31
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setVideoId(I)V

    .line 32
    invoke-interface {p1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setSeasonSequenceAbbr(Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lo/AK;->V()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setEpisode(I)V

    .line 36
    invoke-virtual {p0, p4}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setTrackId(I)V

    .line 39
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->getAdditionalTrackIds()Ljava/util/Map;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "userPlay"

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->getAdditionalTrackIds()Ljava/util/Map;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "autoPlay"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p2, Lo/agv;

    invoke-direct {p2, p1}, Lo/agv;-><init>(Lo/AK;)V

    iput-object p2, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->offlinePostPlayVideo:Lo/agv;

    return-void
.end method

.method constructor <init>(Lo/AK;IIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x82

    .line 78
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->trackId:I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->additionalTrackIds:Ljava/util/Map;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->inMyList:Z

    .line 92
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->doNotIncrementInterrupter:Z

    .line 94
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->autoPlay:Z

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seamlessStart:I

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v1, "play"

    if-ne p5, v0, :cond_0

    .line 47
    iput-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->name:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "playEpisode"

    .line 50
    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->name:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->type:Ljava/lang/String;

    .line 54
    :goto_0
    invoke-virtual {p0, p5}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 55
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-direct {p0, p5}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setVideoId(I)V

    .line 56
    invoke-interface {p1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setSeasonSequenceAbbr(Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Lo/AK;->V()I

    move-result p5

    invoke-direct {p0, p5}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setEpisode(I)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->setTrackId(I)V

    .line 63
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->getAdditionalTrackIds()Ljava/util/Map;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p5, "userPlay"

    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->getAdditionalTrackIds()Ljava/util/Map;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "autoPlay"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p2, Lo/agv;

    invoke-direct {p2, p1}, Lo/agv;-><init>(Lo/AK;)V

    iput-object p2, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->offlinePostPlayVideo:Lo/agv;

    return-void
.end method

.method private setEpisode(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->episode:I

    return-void
.end method

.method private setSeasonSequenceAbbr(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seasonSequenceAbbr:Ljava/lang/String;

    return-void
.end method

.method private setVideoId(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->videoId:I

    return-void
.end method


# virtual methods
.method public getAdditionalTrackIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->additionalTrackIds:Ljava/util/Map;

    return-object v0
.end method

.method public getAncestorTitle()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->ancestorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoplaySeconds()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->autoPlaySeconds:I

    return v0
.end method

.method public getBookmarkPosition()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->bookmarkPosition:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisode()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->episode:I

    return v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterruptDisplayText()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->interruptDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getInterruptThreshold()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->interruptThreshold:I

    return v0
.end method

.method public getItemIndex()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->itemIndex:I

    return v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->itemIndex:I

    return v0
.end method

.method public getLogicalStart()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->logicalStart:J

    return-wide v0
.end method

.method public getMinutesRemaining()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->minutesRemaining:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBackVideo()Lo/AZ;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->offlinePostPlayVideo:Lo/agv;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeamlessStart()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seamlessStart:I

    return v0
.end method

.method public getSeason()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->season:I

    return v0
.end method

.method public getSeasonSequenceAbbr()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seasonSequenceAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonSequenceLong()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seasonSequenceLong:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->trackId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->videoId:I

    return v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDoNotIncrementInterrupter()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->doNotIncrementInterrupter:Z

    return v0
.end method

.method public isForceInterrupt()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->forceInterrupt:Z

    return v0
.end method

.method public isInMyList()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->inMyList:Z

    return v0
.end method

.method public setAncestorTitle(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->ancestorTitle:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkPosition(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->bookmarkPosition:I

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setDoNotIncrementInterrupter(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->doNotIncrementInterrupter:Z

    return-void
.end method

.method public setForceInterrupt(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->forceInterrupt:Z

    return-void
.end method

.method public setInMyList(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->inMyList:Z

    return-void
.end method

.method public setInterruptDisplayText(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->interruptDisplayText:Ljava/lang/String;

    return-void
.end method

.method public setInterruptThreshold(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->interruptThreshold:I

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->itemIndex:I

    return-void
.end method

.method public setLogicalStart(J)V
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->logicalStart:J

    return-void
.end method

.method public setMinutesRemaining(J)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->minutesRemaining:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->name:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSeamlessStart(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seamlessStart:I

    return-void
.end method

.method public setSeason(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->season:I

    return-void
.end method

.method public setSeasonSequenceLong(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->seasonSequenceLong:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->trackId:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->type:Ljava/lang/String;

    return-void
.end method

.method public setVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAction;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method
