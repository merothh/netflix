.class public abstract Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""

# interfaces
.implements Lcom/netflix/android/widgetry/widget/TrackedLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$ClipData;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 1

    .line 38
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$ClipData;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Lcom/netflix/android/widgetry/widget/TrackedLayoutManager$TrackedLayoutManagerException;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/netflix/android/widgetry/widget/TrackedLayoutManager$TrackedLayoutManagerException;-><init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;)V

    throw p2
.end method
