.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;
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
    .line 1783
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1789
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1790
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doZoomIn()V

    .line 1795
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    .line 1796
    return-void

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doZoomOut()V

    goto :goto_0

    .line 1795
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
