.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1082
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearPanel: bottomPanelVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1091
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideTopBottomPanel()V

    goto :goto_0
.end method
