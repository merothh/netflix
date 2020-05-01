.class Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;
.super Ljava/lang/Object;
.source "CoppolaControlsDecorator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$000(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$000(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$100(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$200(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    return-void

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method
