.class public final Lo/Ie;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final a(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public static final synthetic c(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/Ie;->a(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method
