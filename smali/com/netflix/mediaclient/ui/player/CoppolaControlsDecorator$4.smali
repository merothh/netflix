.class Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;
.super Landroid/view/OrientationEventListener;
.source "CoppolaControlsDecorator.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private epsilonCheck(III)Z
    .locals 1

    .prologue
    .line 230
    sub-int v0, p2, p3

    if-le p1, v0, :cond_0

    add-int v0, p2, p3

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/16 v1, 0xa

    .line 220
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$100(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-direct {p0, p1, v1, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->epsilonCheck(III)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x15e

    invoke-direct {p0, p1, v2, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->epsilonCheck(III)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    .line 221
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$100(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/16 v2, 0x5a

    invoke-direct {p0, p1, v2, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->epsilonCheck(III)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x10e

    invoke-direct {p0, p1, v2, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->epsilonCheck(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$600(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 221
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
