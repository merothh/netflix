.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    if-eqz v0, :cond_1

    .line 2502
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "METADATA exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :goto_0
    return-void

    .line 2506
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    monitor-enter v1

    .line 2507
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    .line 2509
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2510
    const-string/jumbo v2, "PlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Player UI state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    if-nez v0, :cond_4

    .line 2514
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getLastActionTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 2515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getLastActionTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 2516
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v2, :cond_3

    .line 2517
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Time to remove panel"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->clearPanel()V

    .line 2521
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2522
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2524
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)V

    .line 2525
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
