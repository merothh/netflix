.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwAdapter;
.source "KubrickKidsPaginatedCwAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwAdapter;->computeNumItemsPerPage()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwAdapter;->computeNumVideosToFetchPerBatch(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRowHeightInPx()I
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3fb70a3d    # 1.43f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 31
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 32
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwAdapter;->getRowHeightInPx()I

    move-result v0

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
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;->init(I)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedCwAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 46
    return-object v0
.end method
