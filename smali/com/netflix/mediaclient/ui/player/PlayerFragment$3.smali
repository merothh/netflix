.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;
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
    .line 1722
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    :goto_0
    return-void

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1731
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "mPlayable is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1735
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1736
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "mPlayable is not episode detail!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1740
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1741
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Episode dialog already showing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1745
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Start episodes dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1748
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    goto :goto_0
.end method
