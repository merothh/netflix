.class Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;
.super Ljava/lang/Object;
.source "PlaycardWorkflowState.java"


# instance fields
.field public audioSeekToInProgress:Z

.field public draggingInProgress:Z

.field public lastActionTime:J

.field public paused:Z

.field public seekToInProgress:Z

.field public timelineCurrentSeekPosition:I

.field public timelineExitOnSnap:Z

.field public timelineInSnapZone:Z

.field public timelinePreviousSeekPosition:I

.field public timelineSeekDelta:I

.field public timelineStartSeekPosition:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimelineCurrentSeekPosition()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineCurrentSeekPosition:I

    return v0
.end method

.method public getTimelineExitOnSnap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineExitOnSnap:Z

    return v0
.end method

.method public getTimelinePreviousSeekPosition()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelinePreviousSeekPosition:I

    return v0
.end method

.method public getTimelineStartSeekPosition()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineStartSeekPosition:I

    return v0
.end method

.method public isDraggingInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->draggingInProgress:Z

    return v0
.end method

.method public isSeekForward()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineCurrentSeekPosition:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelinePreviousSeekPosition:I

    if-ge v0, v1, :cond_0

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

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->lastActionTime:J

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->draggingInProgress:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->seekToInProgress:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->audioSeekToInProgress:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->resetTimeline()V

    return-void
.end method

.method public resetTimeline()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineCurrentSeekPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineInSnapZone:Z

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelinePreviousSeekPosition:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineStartSeekPosition:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineSeekDelta:I

    return-void
.end method

.method public setDraggingInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->draggingInProgress:Z

    return-void
.end method

.method public setTimelineExitOnSnap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineExitOnSnap:Z

    return-void
.end method

.method public updatePosition(I)V
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelinePreviousSeekPosition:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineCurrentSeekPosition:I

    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelinePreviousSeekPosition:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineCurrentSeekPosition:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelinePreviousSeekPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/PlaycardWorkflowState;->timelineSeekDelta:I

    return-void
.end method
