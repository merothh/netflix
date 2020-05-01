.class Landroidx/recyclerview/widget/RecyclerView$Fragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Member$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView$Fragment;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 0

    .line 7591
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 7604
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 7594
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 7617
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 7618
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 7610
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 7611
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()I
    .locals 1

    .line 7599
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$4;->c:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingLeft()I

    move-result v0

    return v0
.end method
