.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Landroid/view/MotionEvent;)V
    .locals 4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PA tap"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Seekto in progress, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inInterruptedOrPendingInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "In interrupted state, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inPostPlayOrPendingPostplay()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
