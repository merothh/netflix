.class public final Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;
.super Lo/ViewGroupOverlay;
.source ""


# instance fields
.field private a:Ljava/util/HashMap;

.field private final b:Ljava/lang/String;

.field public c:Lo/WindowCallbacks;

.field private final d:Lcom/netflix/cl/model/AppView;

.field public viewModelInitializer:Lo/ViewStub;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lo/ViewGroupOverlay;-><init>()V

    const-string v0, "verifyCard"

    .line 19
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->b:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentReplayRequest:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->d:Lcom/netflix/cl/model/AppView;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->a:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->a:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lo/WindowCallbacks;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->c:Lo/WindowCallbacks;

    return-void
.end method

.method public c()Lo/WindowCallbacks;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->c:Lo/WindowCallbacks;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->c()Lo/WindowCallbacks;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->d:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Lo/ViewGroupOverlay;->onAttach(Landroid/content/Context;)V

    .line 27
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->viewModelInitializer:Lo/ViewStub;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/ViewStub;->b(Landroidx/fragment/app/Fragment;)Lo/WindowCallbacks;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->b(Lo/WindowCallbacks;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bM:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/ViewGroupOverlay;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1, p2}, Lo/ViewGroupOverlay;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;->c()Lo/WindowCallbacks;

    move-result-object p1

    invoke-virtual {p1}, Lo/WindowCallbacks;->e()V

    return-void
.end method
