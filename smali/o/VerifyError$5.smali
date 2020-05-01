.class final Lo/VerifyError$5;
.super Lo/VerifyError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VerifyError;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, p1, v0}, Lo/VerifyError;-><init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError$1;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 374
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 3

    .line 415
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Lo/VerifyError$5;->d:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 416
    iget-object p1, p0, Lo/VerifyError$5;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public a(I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->offsetChildrenVertical(I)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 359
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getHeight()I

    move-result v0

    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 381
    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c()I
    .locals 1

    .line 364
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getHeight()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    .line 409
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Lo/VerifyError$5;->d:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 410
    iget-object p1, p0, Lo/VerifyError$5;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 397
    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 404
    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 1

    .line 442
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 437
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 432
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .line 421
    iget-object v0, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getHeight()I

    move-result v0

    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    .line 422
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 389
    iget-object v1, p0, Lo/VerifyError$5;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method
