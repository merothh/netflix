.class Lo/ServiceManager$5;
.super Lo/UnknownError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ServiceManager;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/UnknownError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lo/ServiceManager;


# direct methods
.method constructor <init>(Lo/ServiceManager;Landroid/content/Context;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-direct {p0, p2}, Lo/UnknownError;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 350
    iget-object v0, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v0}, Lo/ServiceManager;->d(Lo/ServiceManager;)I

    move-result v0

    iget-object v1, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v1}, Lo/ServiceManager;->f(Lo/ServiceManager;)I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v1}, Lo/ServiceManager;->i(Lo/ServiceManager;)I

    move-result v1

    mul-int v0, v0, v1

    .line 351
    iget-object v1, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v1}, Lo/ServiceManager;->j(Lo/ServiceManager;)I

    move-result v1

    if-le p1, v1, :cond_0

    .line 352
    iget-object v1, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v1}, Lo/ServiceManager;->j(Lo/ServiceManager;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 354
    :cond_0
    iget-object v1, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v1}, Lo/ServiceManager;->j(Lo/ServiceManager;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 356
    :goto_0
    invoke-super {p0, p1}, Lo/UnknownError;->a(I)V

    return-void
.end method

.method public c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$StateListAnimator;)V
    .locals 2

    .line 361
    iget-object p2, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {p2}, Lo/ServiceManager;->a(Lo/ServiceManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lo/ServiceManager;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 363
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 364
    aget p1, p1, v0

    .line 365
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ServiceManager$5;->d(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    iget-object v1, p0, Lo/ServiceManager$5;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$StateListAnimator;->c(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected e(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 373
    iget-object v0, p0, Lo/ServiceManager$5;->h:Lo/ServiceManager;

    invoke-static {v0}, Lo/ServiceManager;->g(Lo/ServiceManager;)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method
