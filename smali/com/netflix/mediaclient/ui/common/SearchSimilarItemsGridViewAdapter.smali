.class public Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchSimilarItemsGridViewAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchSimilarItemsGridViewAdapter"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final clipToCompleteRows:Z

.field private final gridView:Landroid/widget/GridView;

.field private imgHeight:I

.field private final numGridCols:I

.field private similarMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;"
        }
    .end annotation
.end field

.field private trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/GridView;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->similarMovies:Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->gridView:Landroid/widget/GridView;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->clipToCompleteRows:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumVideoGridCols(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->numGridCols:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->numGridCols:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->imgHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->imgHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->numGridCols:I

    return v0
.end method

.method private clipCountToCompleteRows(I)I
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->numGridCols:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->numGridCols:I

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->clipToCompleteRows:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->similarMovies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->clipCountToCompleteRows(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->similarMovies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->similarMovies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_1

    new-instance v6, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v6, v0, v0, v0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->imgHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    move-object v0, v6

    check-cast v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldShowVerticalBoxArt()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setIsHorizontal(Z)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/VideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-object v6

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    move-object v6, p2

    goto :goto_0
.end method

.method public refreshImagesIfNecessary()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->refreshImageIfNecessary()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->similarMovies:Ljava/util/List;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
