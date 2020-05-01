.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$StateListAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field c:Z

.field e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Application;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2454
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2450
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2462
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 2458
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 2498
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$StateListAnimator;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Application;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2501
    :cond_0
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Application;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 2488
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$StateListAnimator;->c:Z

    return v0
.end method
