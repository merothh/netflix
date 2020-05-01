.class public final Lo/WO;
.super Lo/WT;
.source ""


# instance fields
.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/WT;-><init>(Landroid/view/View;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->dR:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lo/WO;->c:Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lo/WO$3;

    invoke-direct {v0, p0}, Lo/WO$3;-><init>(Lo/WO;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d(II)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 48
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 22
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lo/WO;->q()Lo/TA;

    move-result-object v0

    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/TA;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/WO;->c:Landroid/view/View;

    return-object v0
.end method

.method public g()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lo/WO;->q()Lo/TA;

    move-result-object v0

    invoke-virtual {p0}, Lo/WO;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/TA;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ai:I

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ai:I

    invoke-direct {p0, v0, v1}, Lo/WO;->d(II)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 32
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->am:I

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->am:I

    invoke-direct {p0, v0, v1}, Lo/WO;->d(II)V

    return-void
.end method
