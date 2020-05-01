.class public abstract Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;"
    }
.end annotation


# instance fields
.field private a:Lo/ParcelFormatException;

.field public final b:Lo/ParcelableParcel;

.field public final e:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/PooledStringWriter;I)V
    .locals 5

    .line 400
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->a:Lo/ParcelFormatException;

    .line 402
    invoke-virtual {p2}, Lo/PooledStringWriter;->m()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 403
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lo/PooledStringWriter;->p()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lo/PooledStringWriter;->m()I

    move-result v3

    invoke-virtual {p2}, Lo/PooledStringWriter;->p()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 407
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ParcelableParcel;

    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    .line 408
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    if-eqz p1, :cond_5

    .line 411
    iget-object p3, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Lo/ParcelableParcel;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 412
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lo/ParcelableParcel;->setScrollingTouchSlop(I)V

    .line 414
    invoke-virtual {p2}, Lo/PooledStringWriter;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p2}, Lo/PooledStringWriter;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ParcelableParcel;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)V

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p1, p3}, Lo/ParcelableParcel;->setHasFixedSize(Z)V

    .line 419
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Lo/PooledStringWriter;->a()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)V

    .line 421
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p2}, Lo/PooledStringWriter;->i()I

    move-result v0

    invoke-virtual {p2}, Lo/PooledStringWriter;->i()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v1}, Lo/ParcelableParcel;->setPadding(IIII)V

    .line 423
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p1, v1}, Lo/ParcelableParcel;->setNestedScrollingEnabled(Z)V

    .line 425
    invoke-virtual {p2}, Lo/PooledStringWriter;->g()Lo/PooledStringWriter$Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-interface {p1}, Lo/PooledStringWriter$Activity;->c()Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ParcelableParcel;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 430
    :cond_2
    invoke-virtual {p2}, Lo/PooledStringWriter;->l()Z

    move-result p1

    if-nez p1, :cond_4

    .line 431
    invoke-virtual {p2}, Lo/PooledStringWriter;->a()I

    move-result p1

    if-ne p1, p3, :cond_3

    .line 432
    new-instance p1, Lo/AnnotatedElement;

    invoke-direct {p1}, Lo/AnnotatedElement;-><init>()V

    .line 433
    iget-object p2, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p1, p2}, Lo/AnnotatedElement;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    .line 435
    :cond_3
    new-instance p1, Lo/PerformanceCollector;

    invoke-direct {p1}, Lo/PerformanceCollector;-><init>()V

    .line 436
    iget-object p3, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p1, p3, p2}, Lo/PerformanceCollector;->a(Lo/ParcelableParcel;Lo/PooledStringWriter;)V

    :cond_4
    :goto_1
    return-void

    .line 409
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lomoId not found in itemView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Lo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/ParcelFormatException;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 442
    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->a:Lo/ParcelFormatException;

    .line 443
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lo/ParcelableParcel;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    if-eqz p3, :cond_0

    .line 445
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->a(Ljava/lang/Object;)V

    .line 448
    iget-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p2, p1, p0}, Lo/ParcelFormatException;->b(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->a:Lo/ParcelFormatException;

    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {v0, v1, p0}, Lo/ParcelFormatException;->e(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v1, v0, Lcom/netflix/android/widgetry/widget/TrackedLayoutManager;

    if-eqz v1, :cond_0

    .line 461
    check-cast v0, Lcom/netflix/android/widgetry/widget/TrackedLayoutManager;

    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/widget/TrackedLayoutManager;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
