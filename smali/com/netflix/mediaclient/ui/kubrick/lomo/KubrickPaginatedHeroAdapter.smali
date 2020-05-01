.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "KubrickPaginatedHeroAdapter.java"


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
.field private static final ROW_HEIGHT_LANDSCAPE_SCALE_FACTOR:F = 0.75f

.field private static final ROW_HEIGHT_PORTRAIT_SCALE_FACTOR:F = 1.1f

.field private static final TAG:Ljava/lang/String; = "KubrickPaginatedHeroAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    int-to-float v1, v0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 36
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string/jumbo v1, "KubrickPaginatedHeroAdapter"

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

    .line 39
    :cond_0
    return v0

    .line 34
    :cond_1
    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_0
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
    .line 44
    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;->init(I)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 50
    return-object v0
.end method
