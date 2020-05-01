.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 2066
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2068
    if-eqz v0, :cond_1

    .line 2069
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager is not available, can not change volume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    .line 2080
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Start volume change, get awake clock"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2082
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 2083
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2087
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "volume::onStopTrackingTouch called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    .line 2089
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    .line 2090
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 2091
    return-void
.end method
