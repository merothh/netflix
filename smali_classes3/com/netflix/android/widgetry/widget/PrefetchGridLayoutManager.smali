.class public final Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# instance fields
.field private r:Lo/VerifyError;

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 27
    move-object p1, p0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-static {p1, p3}, Lo/VerifyError;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;I)Lo/VerifyError;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->r:Lo/VerifyError;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IIZILo/amc;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$Fragment$Activity;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutPrefetchRegistry"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$Fragment$Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->t:I

    if-nez v0, :cond_0

    goto :goto_3

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->d()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->getLayoutDirection()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    invoke-virtual {p0, p2}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-lez p1, :cond_5

    if-nez p2, :cond_3

    goto :goto_3

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->r:Lo/VerifyError;

    invoke-virtual {p1, p2}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->r:Lo/VerifyError;

    const-string v2, "orientationHelper"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/VerifyError;->b()I

    move-result v0

    sub-int/2addr p1, v0

    .line 58
    invoke-virtual {p0, p2}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, p2, 0x1

    .line 59
    iget v2, p0, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->t:I

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x1

    :goto_2
    if-ge v0, p2, :cond_5

    if-ltz v0, :cond_4

    .line 60
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->i()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 61
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p4, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Fragment$Activity;->a(II)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final d(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    .line 37
    iput p1, p0, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->t:I

    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjacentPrefetchItemCount must not smaller than 1!"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
