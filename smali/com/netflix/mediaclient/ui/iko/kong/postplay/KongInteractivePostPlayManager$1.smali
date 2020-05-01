.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Default to standard post play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->hide()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cleanup()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showNavigationBar()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionToPostPlay()V

    return-void
.end method
