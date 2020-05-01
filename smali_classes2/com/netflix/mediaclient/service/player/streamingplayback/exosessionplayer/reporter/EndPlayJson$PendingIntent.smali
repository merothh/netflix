.class public Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingIntent"
.end annotation


# instance fields
.field protected averageProcessTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "averagetime"
    .end annotation
.end field

.field protected frameRate:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frameRate"
    .end annotation
.end field

.field protected highAverageTimeOccurrence:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "highAverageTimeOccurrence"
    .end annotation
.end field

.field protected highProcessTimeOccurrence:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "highProcessTimeOccurrence"
    .end annotation
.end field

.field protected maxAverageSlidingWindowProcessTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxaveragetime"
    .end annotation
.end field

.field protected maxAverageSlidingWindowProcessTimeIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxaveragetimeindex"
    .end annotation
.end field

.field protected maxContinuousRendererDrop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxcontinousrendrop"
    .end annotation
.end field

.field protected maxProcessTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxtime"
    .end annotation
.end field

.field protected maxProcessTimeIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxtimeindex"
    .end annotation
.end field

.field protected maxTimeOutOfSync:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxTimeOutOfSync"
    .end annotation
.end field

.field protected numFramesDecoded:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numdec"
    .end annotation
.end field

.field protected numFramesDecodedButNotRendered:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numrendrop"
    .end annotation
.end field

.field protected numFramesRendered:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numren"
    .end annotation
.end field

.field protected numFramesSkipped:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numskip"
    .end annotation
.end field

.field protected numKeyFrameSkipped:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numskipkey"
    .end annotation
.end field

.field protected outOfSync:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outOfSync"
    .end annotation
.end field

.field private videoLagConsective:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoLagConsective"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected videoLagMaxDelta:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoLagMaxDelta"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected videoLagPosition:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoLagPosition"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 727
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->maxContinuousRendererDrop:Ljava/lang/Integer;

    .line 728
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->numFramesSkipped:Ljava/lang/Integer;

    .line 729
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->numFramesDecodedButNotRendered:Ljava/lang/Integer;

    .line 730
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->numFramesRendered:Ljava/lang/Integer;

    .line 731
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->numFramesDecoded:Ljava/lang/Integer;

    .line 732
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->numKeyFrameSkipped:Ljava/lang/Integer;

    .line 733
    instance-of v0, p1, Lo/qL;

    if-eqz v0, :cond_0

    .line 734
    check-cast p1, Lo/qL;

    .line 735
    iget v0, p1, Lo/qL;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->averageProcessTime:Ljava/lang/Integer;

    .line 736
    iget v0, p1, Lo/qL;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->maxProcessTime:Ljava/lang/Integer;

    .line 737
    iget v0, p1, Lo/qL;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->maxProcessTimeIndex:Ljava/lang/Integer;

    .line 738
    iget v0, p1, Lo/qL;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->maxAverageSlidingWindowProcessTime:Ljava/lang/Integer;

    .line 739
    iget v0, p1, Lo/qL;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->maxAverageSlidingWindowProcessTimeIndex:Ljava/lang/Integer;

    .line 740
    iget v0, p1, Lo/qL;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->highAverageTimeOccurrence:Ljava/lang/Integer;

    .line 741
    iget v0, p1, Lo/qL;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->highProcessTimeOccurrence:Ljava/lang/Integer;

    .line 742
    iget v0, p1, Lo/qL;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->outOfSync:Ljava/lang/Integer;

    .line 743
    iget v0, p1, Lo/qL;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->maxTimeOutOfSync:Ljava/lang/Integer;

    .line 744
    iget v0, p1, Lo/qL;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->frameRate:Ljava/lang/Integer;

    .line 745
    iget-object v0, p1, Lo/qL;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->videoLagPosition:Ljava/util/List;

    .line 746
    iget-object v0, p1, Lo/qL;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->videoLagMaxDelta:Ljava/util/List;

    .line 747
    iget-object p1, p1, Lo/qL;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$PendingIntent;->videoLagConsective:Ljava/util/List;

    :cond_0
    return-void
.end method
