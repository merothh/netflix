.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "KubrickPaginatedCwGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUM_VIDEOS_LANDSCAPE_LARGE_SCREEN:I = 0x6

.field private static final NUM_VIDEOS_LANDSCAPE_X_LARGE_SCREEN:I = 0x6

.field private static final NUM_VIDEOS_PORTRAIT_LARGE_SCREEN:I = 0x4

.field private static final NUM_VIDEOS_PORTRAIT_X_LARGE_SCREEN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "KubrickPaginatedCwGalleryAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 3

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected computeNumPages()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->numItemsPerPage:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->ceiling(II)I

    move-result v0

    return v0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, -0x3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KubrickPaginatedCwGalleryAdapter"

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
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->computeNumPages()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->numItemsPerPage:I

    mul-int/2addr v0, p1

    if-lt v0, v8, :cond_1

    add-int/lit8 v0, v0, -0x3

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->numItemsPerPage:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "KubrickPaginatedCwGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->getCurrTitleFormatted()Ljava/lang/String;

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

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->data:Ljava/util/List;

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

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRowHeightInPx()I
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getCwGalleryWidthType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->numItemsPerPage:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KubrickPaginatedCwGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Computed view height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (px), widthType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method protected getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;-><init>(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    return-object v0
.end method
