.class public Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mIsInCancelZone:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inCancelProgressZone(Landroid/widget/SeekBar;F)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private skipSeek(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getCurrentTimelineProgress()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Back to start position after snap, do NOT seek!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public handleTouchEvent(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->inCancelProgressZone(Landroid/widget/SeekBar;F)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->inCancelProgressZone(Landroid/widget/SeekBar;F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChangeCanceled(Landroid/widget/SeekBar;I)V

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onProgressChangeCanceled(Landroid/widget/SeekBar;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;Landroid/widget/SeekBar;I)V

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fromUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mState.draggingInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p2, v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->updatePosition(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getBifFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p2, v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->updatePosition(I)V

    goto :goto_0
.end method

.method public declared-synchronized onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->hideThumb(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->resetTimeline()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;ZZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Start seek, get awake clock"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getBifFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startCurrentTime(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startDragging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "onStopTrackingTouch called"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, p1, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->skipSeek(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getCurrentTimelineProgress()I

    move-result v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V

    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "Seek!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->finishDragging()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->hideThumb(Z)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stop current time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopCurrentTime(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->resetTimeline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "PlayerFragment got not a Netflix seekbar!"

    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v2, v1

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string/jumbo v3, "PlayerFragment"

    const-string/jumbo v4, "Do not seek!"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
