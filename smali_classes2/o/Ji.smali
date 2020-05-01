.class Lo/Ji;
.super Lo/DE;
.source ""


# instance fields
.field private f:Z

.field private g:Landroid/graphics/drawable/TransitionDrawable;

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;ZI)V
    .locals 9

    move-object v8, p0

    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->b:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lo/DE;-><init>(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v8, Lo/Ji;->j:I

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lo/Ji;->c(Z)V

    if-nez p6, :cond_0

    .line 41
    invoke-virtual {p5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->l()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    move/from16 v0, p7

    .line 45
    iput v0, v8, Lo/Ji;->h:I

    return-void
.end method

.method static synthetic b(Lo/Ji;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    return-object p0
.end method

.method private c(Landroid/content/res/Resources;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 2

    .line 64
    iget v0, p0, Lo/Ji;->h:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->M:I

    if-ne v0, v1, :cond_0

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->ca:I

    goto :goto_0

    .line 66
    :cond_0
    iget v0, p0, Lo/Ji;->h:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->C:I

    if-ne v0, v1, :cond_1

    .line 67
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bX:I

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p0, Lo/Ji;->h:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->E:I

    if-ne v0, v1, :cond_2

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bY:I

    goto :goto_0

    .line 70
    :cond_2
    iget v0, p0, Lo/Ji;->h:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->G:I

    if-ne v0, v1, :cond_3

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cb:I

    goto :goto_0

    .line 72
    :cond_3
    iget v0, p0, Lo/Ji;->h:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->H:I

    if-ne v0, v1, :cond_4

    .line 73
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bW:I

    goto :goto_0

    .line 75
    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bV:I

    .line 78
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    return-object p1
.end method

.method static synthetic d(Lo/Ji;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/Ji;->i:Z

    return p1
.end method

.method static synthetic e(Lo/Ji;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/Ji;->f:Z

    return p1
.end method

.method private q()V
    .locals 4

    .line 147
    iget-boolean v0, p0, Lo/Ji;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/Ji;->i:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lo/Ji;->i:Z

    .line 150
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 151
    iget-object v0, p0, Lo/Ji;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lo/Ji$3;

    invoke-direct {v1, p0}, Lo/Ji$3;-><init>(Lo/Ji;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 168
    iget-boolean v0, p0, Lo/Ji;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Ji;->i:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 171
    iget-object v0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lo/Ji;->f:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lo/Ji;->s()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    .line 126
    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lo/Ji;->q()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lo/Ji;->q()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lo/Ji;->e()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lo/Ji;->s()V

    :cond_0
    return-void
.end method

.method protected f()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lo/Ji;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Ji;->c(Landroid/content/res/Resources;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    iput-object v0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    .line 59
    :cond_0
    iget-object v0, p0, Lo/Ji;->g:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .line 140
    iget v0, p0, Lo/Ji;->j:I

    return v0
.end method

.method protected i()I
    .locals 1

    .line 83
    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lo/Ji;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected n()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method
