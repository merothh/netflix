.class public Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
.super Ljava/lang/Object;
.source "PlayerWorkflowState.java"


# instance fields
.field audioSeekToInProgress:Z

.field draggingAudioInProgress:Z

.field draggingInProgress:Z

.field private lastActionTime:J

.field lowBandwidth:Z

.field playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field playStarted:Z

.field private playbackStopped:Z

.field playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

.field seekToInProgress:Z

.field stalled:Z

.field private timelineCurrentSeekPosition:I

.field timelineExitOnSnap:Z

.field public timelineInSnapZone:Z

.field private timelinePreviousSeekPosition:I

.field private timelineSeekDelta:I

.field private userInteraction:Z

.field videoLoaded:Z

.field videoPrepared:Z

.field volumeChangeInProgress:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoPrepared:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playbackStopped:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    iput v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    iput v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    iput v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineInSnapZone:Z

    return-void
.end method


# virtual methods
.method public getLastActionTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lastActionTime:J

    return-wide v0
.end method

.method public getPlayStartInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getPlayerState()Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    return-object v0
.end method

.method public getTimelineExitOnSnap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    return v0
.end method

.method public getTimelineSeekDelta()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    return v0
.end method

.method public getVolumeChangeInProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    return-wide v0
.end method

.method public isAudioSeekToInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    return v0
.end method

.method public isDraggingAudioInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    return v0
.end method

.method public isDraggingInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    return v0
.end method

.method public isLowBandwidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    return v0
.end method

.method public isPlayStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    return v0
.end method

.method public isPlaybackStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playbackStopped:Z

    return v0
.end method

.method public isSeekForward()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeekToInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    return v0
.end method

.method public isStalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    return v0
.end method

.method public isTimelineInSnapZone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineInSnapZone:Z

    return v0
.end method

.method public isVideoLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    return v0
.end method

.method public isVideoPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoPrepared:Z

    return v0
.end method

.method public noUserInteraction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lastActionTime:J

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoPrepared:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playbackStopped:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->resetTimeline()V

    return-void
.end method

.method public resetTimeline()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineInSnapZone:Z

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    return-void
.end method

.method public setDraggingInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    return-void
.end method

.method public setLastActionTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lastActionTime:J

    return-void
.end method

.method public setTimelineExitOnSnap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    return-void
.end method

.method public updatePosition(I)V
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    return-void
.end method

.method public userInteraction()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction:Z

    return-void
.end method
