.class public Lcom/netflix/mediaclient/media/PlayerManifestData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;
    }
.end annotation


# instance fields
.field private availableBitrates:[Ljava/lang/String;

.field bitrateStreamComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J

.field private isOffline:Z

.field private maxGopSize:I

.field private final playableId:J

.field private playbackDisplaySpec:Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

.field private final rawVideoProfileType:Ljava/lang/String;

.field private sortedVideoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private final videoProfileTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJ[Ljava/lang/String;Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;Z)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerManifestData$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/PlayerManifestData$1;-><init>(Lcom/netflix/mediaclient/media/PlayerManifestData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->bitrateStreamComparator:Ljava/util/Comparator;

    .line 44
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playableId:J

    .line 45
    iput-wide p3, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->duration:J

    .line 46
    iput-object p5, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->availableBitrates:[Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playbackDisplaySpec:Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    .line 48
    iput p7, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->maxGopSize:I

    .line 49
    iput-object p8, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->videoProfileTag:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->rawVideoProfileType:Ljava/lang/String;

    .line 51
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->sortedVideoStreams:Ljava/util/List;

    const/4 p1, 0x0

    .line 53
    invoke-interface {p10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 54
    iget-object p3, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->sortedVideoStreams:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->sortedVideoStreams:Ljava/util/List;

    iget-object p2, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->bitrateStreamComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    :cond_1
    iput-boolean p11, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->isOffline:Z

    return-void
.end method


# virtual methods
.method public getAvailableBitrates()[Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->availableBitrates:[Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->duration:J

    return-wide v0
.end method

.method public getGopMaxSizeInMs()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->maxGopSize:I

    return v0
.end method

.method public getPlayableId()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playableId:J

    return-wide v0
.end method

.method public getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playbackDisplaySpec:Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    return-object v0
.end method

.method public getRawVideoProfileType()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->rawVideoProfileType:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProfileTag()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->videoProfileTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStreamsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->sortedVideoStreams:Ljava/util/List;

    return-object v0
.end method

.method public isAV1Profile()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->videoProfileTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "av1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->videoProfileTag:Ljava/lang/String;

    const-string v1, "av01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHDR10Profile()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->videoProfileTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOffline()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->isOffline:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerManifestData{playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->playableId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoProfileTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->videoProfileTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rawVideoProfileType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/PlayerManifestData;->rawVideoProfileType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
