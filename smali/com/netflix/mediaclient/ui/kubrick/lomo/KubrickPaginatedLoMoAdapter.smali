.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "KubrickPaginatedLoMoAdapter.java"


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
.field private static final TAG:Ljava/lang/String; = "KubrickPaginatedLoMoAdapter"


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
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string/jumbo v1, "KubrickPaginatedLoMoAdapter"

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

    .line 41
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
    .line 46
    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;

    .line 47
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->init(I)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 52
    return-object v0
.end method
