.class public final Lo/Xp;
.super Lo/Xq;
.source ""


# instance fields
.field private b:I

.field private final c:Landroid/view/View;

.field private final d:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lo/Xq;-><init>(Landroid/view/ViewGroup;)V

    .line 17
    invoke-virtual {p0}, Lo/Xp;->h()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootUI.findViewById(R.id\u2026ating_loading_background)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Xp;->c:Landroid/view/View;

    .line 18
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->ep:I

    iput p1, p0, Lo/Xp;->d:I

    return-void
.end method

.method public static final synthetic a(Lo/Xp;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xp;->h:I

    return p0
.end method

.method private final a(Lo/Factory2;I)V
    .locals 2

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vy:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, p2, v1}, Lo/Factory2;->e(IIII)V

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uD:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, p2, v1}, Lo/Factory2;->e(IIII)V

    return-void
.end method

.method public static final synthetic a(Lo/Xp;I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/Xp;->f:I

    return-void
.end method

.method public static final synthetic b(Lo/Xp;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xp;->f:I

    return p0
.end method

.method public static final synthetic b(Lo/Xp;I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/Xp;->b:I

    return-void
.end method

.method private final b(Z)V
    .locals 2

    .line 42
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 43
    invoke-virtual {p0}, Lo/Xp;->h()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lo/MenuInflater;

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lo/Xp;->d(Lo/Factory2;)V

    .line 46
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    invoke-direct {p0, v0, p1}, Lo/Xp;->a(Lo/Factory2;I)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lo/Xp;->h()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MenuInflater;

    invoke-virtual {v0, p1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void

    .line 43
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic c(Lo/Xp;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xp;->i:I

    return p0
.end method

.method public static final synthetic c(Lo/Xp;I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/Xp;->h:I

    return-void
.end method

.method public static final synthetic d(Lo/Xp;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xp;->b:I

    return p0
.end method

.method private final d(Landroid/view/View;)V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lo/Xp;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    new-instance v1, Lo/Xp$Application;

    invoke-direct {v1, p1}, Lo/Xp$Application;-><init>(Landroid/view/View;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final d(Lo/Factory2;)V
    .locals 3

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    invoke-virtual {p1, v0}, Lo/Factory2;->b(I)V

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v1}, Lo/Factory2;->e(IIII)V

    .line 59
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2, v1}, Lo/Factory2;->e(IIII)V

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2, v1}, Lo/Factory2;->e(IIII)V

    .line 61
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2, v1}, Lo/Factory2;->e(IIII)V

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lo/Factory2;->a(II)V

    .line 63
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lo/Factory2;->c(II)V

    return-void
.end method

.method public static final synthetic d(Lo/Xp;I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/Xp;->g:I

    return-void
.end method

.method public static final synthetic e(Lo/Xp;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xp;->g:I

    return p0
.end method

.method public static final synthetic e(Lo/Xp;I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/Xp;->i:I

    return-void
.end method

.method public static final synthetic h(Lo/Xp;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xp;->j:I

    return p0
.end method

.method public static final synthetic j(Lo/Xp;I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/Xp;->j:I

    return-void
.end method

.method private final s()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lo/Xp;->b:I

    .line 68
    iput v0, p0, Lo/Xp;->i:I

    .line 69
    iput v0, p0, Lo/Xp;->f:I

    .line 70
    iput v0, p0, Lo/Xp;->h:I

    .line 71
    iput v0, p0, Lo/Xp;->g:I

    .line 72
    iput v0, p0, Lo/Xp;->j:I

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->et:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026view_12543, parent, true)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lo/Xp;->o()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    new-instance v1, Lo/Xp$StateListAnimator;

    invoke-direct {v1, p0}, Lo/Xp$StateListAnimator;-><init>(Lo/Xp;)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVideoSizeChangedListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/Xp;->s()V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lo/Xp;->b(Z)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lo/Xp;->b(Z)V

    .line 29
    iget-object v0, p0, Lo/Xp;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xp;->d(Landroid/view/View;)V

    return-void
.end method

.method public t()I
    .locals 1

    .line 18
    iget v0, p0, Lo/Xp;->d:I

    return v0
.end method
