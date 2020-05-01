.class public Lo/LX;
.super Lo/LV;
.source ""


# instance fields
.field private final h:Landroid/view/View;

.field private final k:Lo/BaseAdapter;

.field private final l:Landroid/view/View;

.field private final m:Landroid/view/View;

.field private final o:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LW;Lo/Mh;Lo/LU$TaskDescription;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lo/LV;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LW;Lo/Mh;Lo/LU$TaskDescription;)V

    .line 29
    iget-object p2, p0, Lo/LX;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->ko:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LX;->l:Landroid/view/View;

    .line 30
    iget-object p2, p0, Lo/LX;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bS:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LX;->h:Landroid/view/View;

    .line 31
    iget-object p2, p0, Lo/LX;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bR:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LX;->m:Landroid/view/View;

    .line 32
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->rQ:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/LX;->o:Landroid/view/View;

    .line 33
    iget-object p1, p0, Lo/LX;->b:Landroid/view/ViewGroup;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->bt:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/BaseAdapter;

    iput-object p1, p0, Lo/LX;->k:Lo/BaseAdapter;

    .line 35
    iget-object p1, p0, Lo/LX;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lo/LX;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iget-object p1, p0, Lo/LX;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lo/LX;->e:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lo/LX;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method private e(F)V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/LX;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x99

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    shl-int/lit8 p1, p1, 0x18

    or-int/lit8 p1, p1, 0x0

    .line 108
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 91
    invoke-virtual {p0}, Lo/LX;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/LX;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lo/LX;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->s:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lo/LX;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected b(F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 60
    invoke-virtual {p0}, Lo/LX;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    .line 64
    invoke-virtual {p0}, Lo/LX;->a()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eb851ec    # 0.36f

    mul-float v4, v4, v1

    mul-float v3, v3, v4

    .line 66
    iget-object v4, p0, Lo/LX;->l:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {v4, v2}, Landroid/view/View;->setY(F)V

    .line 68
    iget-object v2, p0, Lo/LX;->l:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 72
    :cond_0
    iget-object v2, p0, Lo/LX;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/LX;->g:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 73
    :cond_1
    iget-object v2, p0, Lo/LX;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/LX;->i:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 75
    :cond_2
    iget-object v2, p0, Lo/LX;->f:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 77
    iget-object v2, p0, Lo/LX;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lo/LX;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 82
    :goto_0
    iget-object v0, p0, Lo/LX;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lo/LX;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->l:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    sub-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 85
    :cond_4
    invoke-direct {p0, v1}, Lo/LX;->e(F)V

    return-void
.end method

.method protected d()I
    .locals 1

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->m:I

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/LX;->h:Landroid/view/View;

    return-object v0
.end method

.method protected e(Z)V
    .locals 8

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    new-array p1, v5, [Landroid/view/View;

    .line 114
    iget-object v5, p0, Lo/LX;->a:Landroid/view/View;

    aput-object v5, p1, v7

    iget-object v5, p0, Lo/LX;->c:Landroid/view/View;

    aput-object v5, p1, v6

    iget-object v5, p0, Lo/LX;->e:Landroid/view/View;

    aput-object v5, p1, v4

    iget-object v4, p0, Lo/LX;->j:Landroid/view/View;

    aput-object v4, p1, v3

    iget-object v3, p0, Lo/LX;->f:Landroid/widget/ImageView;

    aput-object v3, p1, v2

    iget-object v2, p0, Lo/LX;->m:Landroid/view/View;

    aput-object v2, p1, v1

    iget-object v1, p0, Lo/LX;->k:Lo/BaseAdapter;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lo/LX;->b([Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lo/LX;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    new-array p1, v6, [Landroid/view/View;

    .line 124
    iget-object v0, p0, Lo/LX;->j:Landroid/view/View;

    aput-object v0, p1, v7

    invoke-virtual {p0, p1}, Lo/LX;->d([Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-array p1, v5, [Landroid/view/View;

    .line 128
    iget-object v5, p0, Lo/LX;->a:Landroid/view/View;

    aput-object v5, p1, v7

    iget-object v5, p0, Lo/LX;->c:Landroid/view/View;

    aput-object v5, p1, v6

    iget-object v5, p0, Lo/LX;->e:Landroid/view/View;

    aput-object v5, p1, v4

    iget-object v4, p0, Lo/LX;->j:Landroid/view/View;

    aput-object v4, p1, v3

    iget-object v3, p0, Lo/LX;->f:Landroid/widget/ImageView;

    aput-object v3, p1, v2

    iget-object v2, p0, Lo/LX;->m:Landroid/view/View;

    aput-object v2, p1, v1

    iget-object v1, p0, Lo/LX;->k:Lo/BaseAdapter;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lo/LX;->e([Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
