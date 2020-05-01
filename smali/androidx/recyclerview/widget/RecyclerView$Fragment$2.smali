.class Landroidx/recyclerview/widget/RecyclerView$Fragment$2;
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
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$Fragment;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 0

    .line 7627
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 7640
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    .line 7641
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 7630
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 7654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 7655
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 7647
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 7648
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()I
    .locals 1

    .line 7635
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Fragment$2;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPaddingTop()I

    move-result v0

    return v0
.end method
