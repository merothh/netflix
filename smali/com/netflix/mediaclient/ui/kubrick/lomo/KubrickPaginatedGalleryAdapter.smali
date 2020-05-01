.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "KubrickPaginatedGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUM_GALLERY_VIDEOS_LANDSCAPE:I = 0x8

.field private static final NUM_GALLERY_VIDEOS_PORTRAIT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "KubrickPaginatedGalleryAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected computeNumPages()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->numItemsPerPage:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->ceiling(II)I

    move-result v0

    return v0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    .line 97
    if-nez p1, :cond_0

    .line 98
    add-int/lit8 v0, v0, -0x3

    .line 99
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "KubrickPaginatedGalleryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "For first batch of videos, reducing count for Gallery view - fetch size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return v0
.end method

.method public getDataForPage(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->computeNumPages()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->numItemsPerPage:I

    mul-int/2addr v0, p1

    .line 60
    if-lt v0, v8, :cond_1

    .line 61
    add-int/lit8 v0, v0, -0x3

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->numItemsPerPage:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 66
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string/jumbo v2, "KubrickPaginatedGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Getting [%d, %d], data set size: %d, page: %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRowHeightInPx()I
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 41
    mul-int/lit8 v0, v0, 0x4

    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "KubrickPaginatedGalleryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Computed view height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (px)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    return v0
.end method

.method protected getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 75
    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;-><init>(Landroid/content/Context;I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 80
    return-object v0
.end method
