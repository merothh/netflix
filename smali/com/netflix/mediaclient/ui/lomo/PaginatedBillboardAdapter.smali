.class public Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "PaginatedBillboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaginatedBillboardAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getLandscapeBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    int-to-float v1, v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x4018f5c3    # 2.39f

    :goto_0
    div-float v0, v1, v0

    float-to-int v0, v0

    return v0

    :cond_0
    const v0, 0x3fe39581    # 1.778f

    goto :goto_0
.end method

.method public static getPortraitBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getPortraitBillboardPhoneOffset(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->getPortraitBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->getPortraitBillboardPhoneOffset(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    const-string/jumbo v1, "PaginatedBillboardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Computed view height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->getLandscapeBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

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
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const-class v0, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;->init(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    return-object v0
.end method
