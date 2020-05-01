.class Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Lo/VerifyError;

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2454
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, -0x1

    .line 2458
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->d:I

    const/high16 v0, -0x80000000

    .line 2459
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    const/4 v0, 0x0

    .line 2460
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->a:Z

    .line 2461
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->b:Z

    return-void
.end method

.method b()V
    .locals 1

    .line 2469
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    .line 2470
    invoke-virtual {v0}, Lo/VerifyError;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    .line 2471
    invoke-virtual {v0}, Lo/VerifyError;->a()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 4

    .line 2491
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0}, Lo/VerifyError;->d()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2493
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->d(Landroid/view/View;I)V

    return-void

    .line 2496
    :cond_0
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->d:I

    .line 2497
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->a:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2498
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {p2}, Lo/VerifyError;->b()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2499
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0, p1}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 2501
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0}, Lo/VerifyError;->b()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    if-lez p2, :cond_2

    .line 2504
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0, p1}, Lo/VerifyError;->b(Landroid/view/View;)I

    move-result v0

    .line 2505
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    sub-int/2addr v2, v0

    .line 2506
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0}, Lo/VerifyError;->a()I

    move-result v0

    .line 2507
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v3, p1}, Lo/VerifyError;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    .line 2509
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v2, v0

    if-gez v2, :cond_2

    .line 2513
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    goto :goto_0

    .line 2517
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {p2, p1}, Lo/VerifyError;->e(Landroid/view/View;)I

    move-result p2

    .line 2518
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v2}, Lo/VerifyError;->a()I

    move-result v2

    sub-int v2, p2, v2

    .line 2519
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    if-lez v2, :cond_2

    .line 2521
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    .line 2522
    invoke-virtual {v3, p1}, Lo/VerifyError;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr p2, v3

    .line 2523
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v3}, Lo/VerifyError;->b()I

    move-result v3

    sub-int/2addr v3, v0

    .line 2525
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    .line 2526
    invoke-virtual {v0, p1}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v3, p1

    .line 2527
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {p1}, Lo/VerifyError;->b()I

    move-result p1

    .line 2528
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    .line 2531
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    :cond_2
    :goto_0
    return-void
.end method

.method c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)Z
    .locals 1

    .line 2485
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 2486
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->getViewLayoutPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2487
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->getViewLayoutPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->i()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    .line 2538
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->a:Z

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0, p1}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    .line 2540
    invoke-virtual {v0}, Lo/VerifyError;->d()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    goto :goto_0

    .line 2542
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->c:Lo/VerifyError;

    invoke-virtual {v0, p1}, Lo/VerifyError;->e(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    .line 2545
    :goto_0
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$ActionBar;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
