.class Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;
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
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$300(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Z

    move-result v3

    .line 101
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$400(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Z)V

    .line 103
    if-eqz v3, :cond_1

    .line 105
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$500(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I

    move-result v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 110
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 101
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0, v5, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method
