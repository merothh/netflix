.class public abstract Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;
.super Lo/Crossfade;
.source ""

# interfaces
.implements Lo/RecognizerIntent;


# instance fields
.field private c:Ljava/util/HashMap;

.field public keyboardController:Lo/GateKeeperResponse;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/Crossfade;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->keyboardController:Lo/GateKeeperResponse;

    if-nez v0, :cond_0

    const-string v1, "keyboardController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/GateKeeperResponse;->d()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 25
    invoke-super {p0}, Lo/Crossfade;->onDestroyView()V

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->keyboardController:Lo/GateKeeperResponse;

    if-nez v0, :cond_0

    const-string v1, "keyboardController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/GateKeeperResponse;->d()V

    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1, p2}, Lo/Crossfade;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->d()V

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->c()V

    return-void
.end method
