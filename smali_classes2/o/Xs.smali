.class public final Lo/Xs;
.super Lo/Xr;
.source ""


# instance fields
.field private e:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayUIObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/Xr;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 7

    .line 27
    new-instance v6, Lo/Lw;

    .line 28
    invoke-virtual {p0}, Lo/Xs;->r()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->h:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    .line 29
    invoke-virtual {p0}, Lo/Xs;->r()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->v:I

    invoke-static {v0, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 27
    invoke-direct/range {v0 .. v5}, Lo/Lw;-><init>(IIFILo/amc;)V

    .line 37
    invoke-static {}, Lo/afw;->b()Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 38
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 39
    new-instance v2, Lo/Xs$TaskDescription;

    invoke-direct {v2, p0, v6, v0}, Lo/Xs$TaskDescription;-><init>(Lo/Xs;Lo/Lw;Z)V

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-virtual {p0}, Lo/Xs;->n()I

    move-result v2

    int-to-long v2, v2

    .line 45
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    iput-object v1, p0, Lo/Xs;->e:Landroid/animation/ValueAnimator;

    .line 50
    invoke-virtual {p0}, Lo/Xs;->m()Lo/HorizontalScrollView;

    move-result-object v0

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lo/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lo/Xs;->m()Lo/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lo/Xs$Application;

    invoke-direct {v1, p0}, Lo/Xs$Application;-><init>(Lo/Xs;)V

    check-cast v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42dc0000    # 110.0f
    .end array-data
.end method

.method public l()I
    .locals 1

    .line 73
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eJ:I

    return v0
.end method

.method public q()V
    .locals 1

    .line 65
    iget-object v0, p0, Lo/Xs;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/Xs;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method
