.class Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;
.super Ljava/lang/Object;
.source "CoppolaControlsDecorator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updatePlaybackStatus(Z)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayPauseListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 70
    :cond_0
    return-void
.end method
