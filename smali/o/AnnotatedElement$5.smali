.class Lo/AnnotatedElement$5;
.super Lo/UnknownError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AnnotatedElement;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/UnknownError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lo/AnnotatedElement;


# direct methods
.method constructor <init>(Lo/AnnotatedElement;Landroid/content/Context;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lo/AnnotatedElement$5;->f:Lo/AnnotatedElement;

    invoke-direct {p0, p2}, Lo/UnknownError;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected c(I)I
    .locals 1

    .line 192
    invoke-super {p0, p1}, Lo/UnknownError;->c(I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$StateListAnimator;)V
    .locals 2

    .line 175
    iget-object p2, p0, Lo/AnnotatedElement$5;->f:Lo/AnnotatedElement;

    iget-object v0, p2, Lo/AnnotatedElement;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lo/AnnotatedElement;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 177
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 178
    aget p1, p1, v0

    .line 179
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/AnnotatedElement$5;->d(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget-object v1, p0, Lo/AnnotatedElement$5;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$StateListAnimator;->c(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected e(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 187
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method
