.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->UNLOCK:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showUnlockedGear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showGearSelection()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->POWERUP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showPowerUp()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleResult()V

    goto :goto_0
.end method
