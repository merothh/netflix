.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLargeVideoAdapter;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;
.source "KubrickPaginatedLargeVideoAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLargeVideoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

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

    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLargeVideoViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLargeVideoViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLargeVideoViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLargeVideoAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLargeVideoViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->init(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLargeVideoAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    return-object v0
.end method
