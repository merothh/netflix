.class public final Lo/Id$TaskDescription;
.super Lo/UnknownError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Id;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic i:Lo/Id;


# direct methods
.method constructor <init>(Lo/Id;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lo/Id$TaskDescription;->i:Lo/Id;

    invoke-direct {p0, p2}, Lo/UnknownError;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$StateListAnimator;)V
    .locals 2

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lo/Id$TaskDescription;->i:Lo/Id;

    invoke-static {p2}, Lo/Id;->d(Lo/Id;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p2, v0, p1}, Lo/Id;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 230
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 231
    aget p1, p1, v0

    .line 232
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Id$TaskDescription;->d(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v1, p0, Lo/Id$TaskDescription;->e:Landroid/view/animation/DecelerateInterpolator;

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$StateListAnimator;->c(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected e(Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42200000    # 40.0f

    div-float/2addr v0, p1

    return v0
.end method
