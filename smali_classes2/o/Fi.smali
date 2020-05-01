.class public Lo/Fi;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Fz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;",
        "Lo/Fz;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewStub;

.field private final b:Lo/ImageSwitcher;

.field private final c:Lo/aka;

.field private final d:Lo/aka;

.field private final e:Lo/ImageSwitcher;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Fi;->a:Landroid/view/ViewStub;

    .line 16
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCreditsUIView$uiView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCreditsUIView$uiView$2;-><init>(Lo/Fi;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fi;->d:Lo/aka;

    .line 25
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCreditsUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCreditsUIView$containerId$2;-><init>(Lo/Fi;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fi;->c:Lo/aka;

    .line 29
    invoke-virtual {p0}, Lo/Fi;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.video_details_starring)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fi;->b:Lo/ImageSwitcher;

    .line 30
    invoke-virtual {p0}, Lo/Fi;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uZ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.video_details_creators)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fi;->e:Lo/ImageSwitcher;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Fi;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lo/Fi;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lo/Fi;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 54
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->fV:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->eY:I

    .line 55
    :goto_0
    invoke-static {p3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 56
    iget-object p3, p0, Lo/Fi;->e:Lo/ImageSwitcher;

    iget-object v0, p0, Lo/Fi;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lo/aeE;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Fi;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lo/Fi;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lo/Fi;->b:Lo/ImageSwitcher;

    iget-object v1, p0, Lo/Fi;->a:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jY:I

    invoke-static {v1, v2, p1}, Lo/aeE;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 38
    iget-object v0, p0, Lo/Fi;->b:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lo/Fi;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 50
    iget-object v0, p0, Lo/Fi;->e:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/Fi;->e:Lo/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 34
    iget-object v0, p0, Lo/Fi;->b:Lo/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public final o()Landroid/view/ViewStub;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Fi;->a:Landroid/view/ViewStub;

    return-object v0
.end method
