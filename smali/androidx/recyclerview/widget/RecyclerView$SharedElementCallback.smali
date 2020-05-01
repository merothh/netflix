.class public Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedElementCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;
    }
.end annotation


# instance fields
.field private b:I

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5658
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5660
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->b:I

    return-void
.end method

.method private d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;
    .locals 2

    .line 5815
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    if-nez v0, :cond_0

    .line 5817
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;-><init>()V

    .line 5818
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 2

    .line 5704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    if-eqz p1, :cond_1

    .line 5705
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5706
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->d:Ljava/util/ArrayList;

    .line 5707
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5708
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->isAttachedToTransitionOverlay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5709
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a()V
    .locals 1

    .line 5786
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->b:I

    return-void
.end method

.method a(IJ)V
    .locals 2

    .line 5760
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    move-result-object p1

    .line 5761
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->a:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->a:J

    return-void
.end method

.method a(IJJ)Z
    .locals 4

    .line 5772
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    move-result-object p1

    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$Activity;Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5804
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->a()V

    :cond_0
    if-nez p3, :cond_1

    .line 5806
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->b:I

    if-nez p1, :cond_1

    .line 5807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d()V

    :cond_1
    if-eqz p2, :cond_2

    .line 5810
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->e()V

    :cond_2
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 5679
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    move-result-object p1

    .line 5680
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->c:I

    .line 5681
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->d:Ljava/util/ArrayList;

    .line 5682
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5683
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(IJ)V
    .locals 2

    .line 5766
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    move-result-object p1

    .line 5767
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->b:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->b:J

    return-void
.end method

.method d(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    .line 5756
    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long p1, p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 5666
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5667
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    .line 5668
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .line 5782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->b:I

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 3

    .line 5740
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getItemViewType()I

    move-result v0

    .line 5741
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->d:Ljava/util/ArrayList;

    .line 5742
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->c:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    .line 5748
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->resetInternal()V

    .line 5749
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method e(IJJ)Z
    .locals 4

    .line 5777
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d(I)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;

    move-result-object p1

    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
