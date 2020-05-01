.class final Lo/VerifyError$1;
.super Lo/VerifyError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VerifyError;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, p1, v0}, Lo/VerifyError;-><init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError$1;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 276
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 3

    .line 317
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Lo/VerifyError$1;->d:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 318
    iget-object p1, p0, Lo/VerifyError$1;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public a(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->offsetChildrenHorizontal(I)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 261
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getWidth()I

    move-result v0

    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 283
    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c()I
    .locals 1

    .line 266
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getWidth()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    .line 311
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Lo/VerifyError$1;->d:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 312
    iget-object p1, p0, Lo/VerifyError$1;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 299
    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 306
    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 1

    .line 344
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 339
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 334
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .line 323
    iget-object v0, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getWidth()I

    move-result v0

    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    .line 324
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 291
    iget-object v1, p0, Lo/VerifyError$1;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method
