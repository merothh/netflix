.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 74
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 755
    if-eqz p5, :cond_0

    .line 758
    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    :goto_0
    move v3, v2

    move v2, v0

    .line 765
    :goto_1
    if-eq v2, p3, :cond_1

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v0, v2

    .line 767
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 768
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 769
    iput v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 770
    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v0

    .line 765
    add-int v0, v2, v1

    move v2, v0

    goto :goto_1

    .line 760
    :cond_0
    add-int/lit8 v1, p3, -0x1

    move p3, v0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 762
    goto :goto_0

    .line 772
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 192
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 193
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 310
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 320
    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    .line 322
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 324
    :cond_1
    aput v2, p0, v2

    .line 325
    div-int v1, p2, p1

    .line 326
    rem-int v5, p2, p1

    .line 329
    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-gt v3, p1, :cond_2

    .line 331
    add-int/2addr v2, v5

    .line 332
    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v5, :cond_3

    .line 333
    add-int/lit8 v0, v1, 0x1

    .line 334
    sub-int/2addr v2, p1

    .line 336
    :goto_1
    add-int/2addr v4, v0

    .line 337
    aput v4, p0, v3

    .line 329
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 339
    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 386
    if-ne p4, v0, :cond_0

    .line 388
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 389
    if-eqz v0, :cond_1

    .line 391
    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v0, :cond_3

    .line 392
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 393
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 398
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v2, v0

    move v0, v1

    .line 400
    :goto_2
    if-ge v2, v3, :cond_2

    .line 401
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 402
    if-le v1, v0, :cond_2

    .line 403
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 408
    goto :goto_2

    .line 409
    :cond_2
    iput v2, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 411
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 364
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 366
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 453
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 454
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 459
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 466
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 470
    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 474
    if-ne v0, v1, :cond_2

    .line 479
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 487
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 491
    if-ne v0, v1, :cond_0

    .line 494
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 495
    if-ne v0, v1, :cond_2

    .line 500
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 732
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 733
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 697
    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 698
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 700
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 702
    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    .line 705
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v5, :cond_0

    .line 706
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 708
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeightMode()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 716
    :goto_0
    invoke-direct {p0, p1, v1, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 717
    return-void

    .line 711
    :cond_0
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 713
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidthMode()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 739
    if-eqz p4, :cond_1

    .line 740
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    .line 744
    :goto_0
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 747
    :cond_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 280
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 281
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 421
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 423
    :goto_1
    if-eq p3, p4, :cond_4

    .line 424
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 425
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 426
    if-ltz v0, :cond_7

    if-ge v0, p5, :cond_7

    .line 427
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    .line 428
    if-eqz v0, :cond_1

    move-object v0, v2

    move-object v3, v4

    .line 423
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 421
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    if-nez v4, :cond_7

    move-object v0, v2

    .line 433
    goto :goto_2

    .line 435
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 436
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 437
    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    move-object v3, v4

    .line 438
    goto :goto_2

    .line 445
    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 226
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 245
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 3

    .prologue
    .line 343
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 347
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 15

    .prologue
    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v12

    .line 511
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_2

    const/4 v2, 0x1

    move v8, v2

    .line 512
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v2, v2, v3

    move v11, v2

    .line 516
    :goto_1
    if-eqz v8, :cond_0

    .line 517
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 519
    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v7, 0x1

    .line 521
    :goto_2
    const/4 v5, 0x0

    .line 522
    const/4 v6, 0x0

    .line 523
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 524
    if-nez v7, :cond_1

    .line 525
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 526
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    .line 527
    add-int/2addr v2, v3

    .line 529
    :cond_1
    :goto_3
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v5, v3, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-lez v2, :cond_6

    .line 530
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 531
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    .line 532
    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v4, v9, :cond_5

    .line 533
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spans but GridLayoutManager has only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spans."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    .line 512
    :cond_3
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_1

    .line 519
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 537
    :cond_5
    sub-int/2addr v2, v4

    .line 538
    if-gez v2, :cond_7

    .line 550
    :cond_6
    if-nez v5, :cond_8

    .line 551
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 684
    :goto_4
    return-void

    .line 541
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_6

    .line 545
    add-int/2addr v6, v4

    .line 546
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v4, v5

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 548
    goto :goto_3

    .line 555
    :cond_8
    const/4 v10, 0x0

    .line 556
    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 559
    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    .line 560
    const/4 v2, 0x0

    move v6, v2

    move v4, v9

    move v3, v10

    :goto_5
    if-ge v6, v5, :cond_d

    .line 561
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v9, v2, v6

    .line 562
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v2, :cond_b

    .line 563
    if-eqz v7, :cond_a

    .line 564
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 575
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v2}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 577
    const/4 v2, 0x0

    invoke-direct {p0, v9, v12, v2}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 578
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 579
    if-le v2, v3, :cond_9

    move v3, v2

    .line 582
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 583
    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v13, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v2, v2

    div-float v2, v9, v2

    .line 585
    cmpl-float v9, v2, v4

    if-lez v9, :cond_1b

    .line 560
    :goto_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    goto :goto_5

    .line 566
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 569
    :cond_b
    if-eqz v7, :cond_c

    .line 570
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    .line 572
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_6

    .line 589
    :cond_d
    if-eqz v8, :cond_e

    .line 591
    invoke-direct {p0, v4, v11}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 593
    const/4 v3, 0x0

    .line 594
    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v5, :cond_e

    .line 595
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v4

    .line 596
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-direct {p0, v2, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 597
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 598
    if-le v2, v3, :cond_1a

    .line 594
    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_8

    .line 606
    :cond_e
    const/4 v2, 0x0

    move v6, v2

    :goto_a
    if-ge v6, v5, :cond_11

    .line 607
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v2, v6

    .line 608
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_f

    .line 609
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 610
    iget-object v4, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 611
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 613
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v9

    iget v9, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    .line 615
    iget v9, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v10, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v9, v10}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v9

    .line 618
    iget v10, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 619
    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    .line 621
    sub-int v2, v3, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 629
    :goto_b
    const/4 v8, 0x1

    invoke-direct {p0, v7, v4, v2, v8}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 606
    :cond_f
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_a

    .line 624
    :cond_10
    sub-int v4, v3, v4

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 626
    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    goto :goto_b

    .line 633
    :cond_11
    move-object/from16 v0, p4

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 635
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 636
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    .line 637
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    .line 638
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 639
    sub-int v3, v2, v3

    move v4, v6

    move v6, v7

    .line 653
    :goto_c
    const/4 v7, 0x0

    move v11, v2

    move v9, v3

    move v10, v4

    move v8, v6

    move v3, v7

    :goto_d
    if-ge v3, v5, :cond_19

    .line 654
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v2, v3

    .line 655
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 656
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 658
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    iget v10, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v8, v10

    aget v6, v6, v8

    add-int v10, v4, v6

    .line 659
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    sub-int v8, v10, v4

    :goto_e
    move-object v6, p0

    .line 670
    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 678
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 679
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 681
    :cond_13
    move-object/from16 v0, p4

    iget-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v4

    or-int/2addr v2, v4

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 653
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    .line 641
    :cond_14
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 642
    add-int v2, v4, v3

    move v3, v4

    move v4, v6

    move v6, v7

    goto :goto_c

    .line 645
    :cond_15
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_16

    .line 646
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 647
    sub-int v3, v6, v3

    move v14, v4

    move v4, v6

    move v6, v3

    move v3, v14

    goto :goto_c

    .line 649
    :cond_16
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 650
    add-int/2addr v3, v6

    move v14, v4

    move v4, v3

    move v3, v14

    goto :goto_c

    .line 661
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v8, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v6, v6, v8

    add-int v8, v4, v6

    .line 662
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v10, v8, v4

    goto :goto_e

    .line 665
    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v9, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v6, v6, v9

    add-int v9, v4, v6

    .line 666
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v11, v9, v4

    goto :goto_e

    .line 683
    :cond_19
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v2, v3

    goto/16 :goto_9

    :cond_1b
    move v2, v4

    goto/16 :goto_7
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 359
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 360
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 20

    .prologue
    .line 979
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 980
    if-nez v13, :cond_1

    .line 981
    const/4 v9, 0x0

    .line 1045
    :cond_0
    :goto_0
    return-object v9

    .line 983
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 984
    iget v14, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 985
    iget v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int v15, v3, v2

    .line 986
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 987
    if-nez v2, :cond_2

    .line 988
    const/4 v9, 0x0

    goto :goto_0

    .line 992
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 993
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    .line 995
    :goto_2
    if-eqz v2, :cond_6

    .line 996
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 997
    const/4 v3, -0x1

    .line 998
    const/4 v2, -0x1

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    .line 1004
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    .line 1005
    :goto_4
    const/4 v8, 0x0

    .line 1006
    const/4 v7, -0x1

    .line 1007
    const/4 v6, 0x0

    move v12, v2

    .line 1009
    :goto_5
    if-eq v12, v3, :cond_3

    .line 1010
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1011
    if-ne v9, v13, :cond_8

    :cond_3
    move-object v9, v8

    .line 1045
    goto :goto_0

    .line 993
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1000
    :cond_6
    const/4 v4, 0x0

    .line 1001
    const/4 v3, 0x1

    .line 1002
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    goto :goto_3

    .line 1004
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 1014
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v6

    move v6, v7

    move-object v7, v8

    .line 1009
    :goto_6
    add-int v8, v12, v4

    move v12, v8

    move-object v8, v7

    move v7, v6

    move v6, v2

    goto :goto_5

    .line 1017
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1018
    iget v0, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v16, v0

    .line 1019
    iget v10, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v11, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int v17, v10, v11

    .line 1020
    move/from16 v0, v16

    if-ne v0, v14, :cond_a

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 1023
    :cond_a
    const/4 v10, 0x0

    .line 1024
    if-nez v8, :cond_c

    .line 1025
    const/4 v10, 0x1

    .line 1038
    :cond_b
    :goto_7
    if-eqz v10, :cond_f

    .line 1040
    iget v6, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1041
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1042
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v2, v7

    move-object v7, v9

    goto :goto_6

    .line 1027
    :cond_c
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1028
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1029
    sub-int v11, v18, v11

    .line 1030
    if-le v11, v6, :cond_d

    .line 1031
    const/4 v10, 0x1

    goto :goto_7

    .line 1032
    :cond_d
    if-ne v11, v6, :cond_b

    move/from16 v0, v16

    if-le v0, v7, :cond_e

    const/4 v11, 0x1

    :goto_8
    if-ne v5, v11, :cond_b

    .line 1034
    const/4 v10, 0x1

    goto :goto_7

    .line 1032
    :cond_e
    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    move v2, v6

    move v6, v7

    move-object v7, v8

    goto :goto_6
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 163
    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    .line 150
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 151
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 152
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 156
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 153
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :cond_2
    const/4 v3, 0x1

    .line 160
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 161
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 158
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 201
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 206
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 222
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 211
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 217
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 175
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 294
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    .line 294
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    .line 302
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 298
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    .line 299
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    .line 299
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 794
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 798
    if-ge p1, v1, :cond_1

    .line 799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 804
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 262
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 112
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
