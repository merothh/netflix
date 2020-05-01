.class public Lo/Fq;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Fx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;",
        "Lo/Fx;"
    }
.end annotation


# instance fields
.field private final a:Lo/ImageSwitcher;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/LinearLayout;

.field private final d:Lo/aka;

.field private final e:Lo/ImageSwitcher;

.field private final g:Lo/ImageSwitcher;

.field private final i:Landroid/view/ViewStub;

.field private final j:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/Fq;-><init>(Landroid/view/ViewStub;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewStub;I)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Fq;->i:Landroid/view/ViewStub;

    .line 18
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;-><init>(Lo/Fq;I)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fq;->d:Lo/aka;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$containerId$2;-><init>(Lo/Fq;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fq;->j:Lo/aka;

    .line 35
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->vp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id\u2026deo_details_supplemental)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/Fq;->b:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->vb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id\u2026eo_details_episode_badge)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fq;->a:Lo/ImageSwitcher;

    .line 37
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->vf:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id\u2026eo_details_episode_title)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fq;->e:Lo/ImageSwitcher;

    .line 38
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->gq:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.episode_info_container)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/Fq;->c:Landroid/widget/LinearLayout;

    .line 39
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->vn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.video_details_synopsis)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fq;->g:Lo/ImageSwitcher;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewStub;IILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 15
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->gj:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Fq;-><init>(Landroid/view/ViewStub;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Fq;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Fq;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Fq;->g:Lo/ImageSwitcher;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lo/Fq;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 60
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->cQ:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 66
    iget-object p2, p0, Lo/Fq;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lo/Fq;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 5

    .line 83
    iget-object v0, p0, Lo/Fq;->e:Lo/ImageSwitcher;

    iget-object v1, p0, Lo/Fq;->i:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 43
    iget-object v0, p0, Lo/Fq;->g:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lo/Fq;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 47
    iget-object v0, p0, Lo/Fq;->g:Lo/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 71
    iget-object v0, p0, Lo/Fq;->a:Lo/ImageSwitcher;

    iget-object v1, p0, Lo/Fq;->i:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 55
    iget-object v0, p0, Lo/Fq;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 91
    iget-object v0, p0, Lo/Fq;->e:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 79
    iget-object v0, p0, Lo/Fq;->a:Lo/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/Fq;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 75
    iget-object v0, p0, Lo/Fq;->a:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public final o()Landroid/view/ViewStub;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/Fq;->i:Landroid/view/ViewStub;

    return-object v0
.end method
