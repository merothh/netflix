.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    .line 1712
    :goto_0
    return-void

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_0
.end method
