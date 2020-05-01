.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;
.super Ljava/lang/Object;
.source "KongBackgroundScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setUserInteraction()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInGearSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleIntro()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isEndOfPlayPostPlay()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cleanup()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->access$002(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->hide()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cleanup()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    goto :goto_0
.end method
