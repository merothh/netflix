.class public abstract Lo/Crossfade;
.super Lo/Fade;
.source ""


# instance fields
.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/Fade;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/Crossfade;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Crossfade;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/Crossfade;->c:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/Crossfade;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lo/Crossfade;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/Crossfade;->j()Lo/Explode;

    move-result-object v0

    invoke-interface {v0}, Lo/Explode;->a()Z

    move-result v0

    return v0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public h()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/netflix/mediaclient/acquisition/view/SignupBackType;
    .locals 1

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->INTERRUPT_WITH_DIALOG:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    return-object v0
.end method

.method public abstract j()Lo/Explode;
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Fade;->onDestroyView()V

    invoke-virtual {p0}, Lo/Crossfade;->b()V

    return-void
.end method
