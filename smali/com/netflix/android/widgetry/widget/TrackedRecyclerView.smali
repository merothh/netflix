.class public abstract Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;,
        Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;
    }
.end annotation


# static fields
.field private static b:Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->d:I

    return-void
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView$Activity;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Landroidx/recyclerview/widget/RecyclerView$Activity;)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$Activity;)I

    move-result p0

    return p0
.end method

.method public static setDebugAdapterWrapper(Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->b:Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;

    return-void
.end method


# virtual methods
.method protected abstract d()Ljava/lang/String;
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;
    .locals 1

    .line 118
    sget-object v0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->b:Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;

    .line 119
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 67
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 68
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$Activity;)I

    move-result p1

    iput p1, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->d:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 71
    new-instance p1, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->d()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->d:I

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;-><init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;ILandroidx/recyclerview/widget/RecyclerView$Activity;Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$2;)V

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->b:Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;

    .line 111
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V
    .locals 1

    .line 95
    sget-object v0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->b:Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$StateListAnimator;

    .line 100
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    return-void
.end method
