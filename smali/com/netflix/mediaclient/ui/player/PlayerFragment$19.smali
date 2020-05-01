.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3711
    :cond_0
    :goto_0
    return-void

    .line 3638
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3639
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start playback from episode selector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3643
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v1, p2, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3644
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launchPlayback()V

    .line 3648
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleConnectivityCheck()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3649
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playback is disabled for current network"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3653
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 3655
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola1ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3656
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3657
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3658
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3659
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Request to play same episode, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 3661
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto/16 :goto_0

    .line 3663
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3664
    const-string/jumbo v0, "SPY-8951 - mScreen is null inside onEpisodeSelectedForPlayback. Ignoring playback."

    .line 3665
    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3668
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    if-nez v0, :cond_7

    .line 3670
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 3671
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v1, p2, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launchPlayback()V

    .line 3673
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->reset()V

    .line 3674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->hide()V

    .line 3675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackRestarting()V

    goto/16 :goto_0

    .line 3678
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola1ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 3680
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    .line 3683
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 3685
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    .line 3687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 3688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    .line 3690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 3691
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setSeekbarTrackingEnabled(Z)V

    .line 3692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    .line 3694
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v1, p2, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3696
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3302(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3697
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "AssetExtra"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3700
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 3702
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 3704
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3705
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    .line 3707
    :cond_9
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->reset()V

    .line 3708
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->hide()V

    goto/16 :goto_0
.end method
