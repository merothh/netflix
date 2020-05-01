.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedTopTenAdapter;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;
.source "KubrickKidsPaginatedTopTenAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedTopTenAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->KUBRICK_KIDS_TOP_TEN_ROW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedTopTenAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

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
    .line 25
    const-class v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoViewGroup;

    .line 26
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedTopTenAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->init(I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsPaginatedTopTenAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 31
    return-object v0
.end method
