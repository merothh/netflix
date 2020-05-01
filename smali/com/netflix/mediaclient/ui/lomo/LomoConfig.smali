.class public final Lcom/netflix/mediaclient/ui/lomo/LomoConfig;
.super Ljava/lang/Object;
.source "LomoConfig.java"


# static fields
.field public static final NUM_BILLBOARDS_TO_FETCH_PER_BATCH:I = 0xa

.field private static final lomoFragOffsetRightTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final numCWVideosPerPageTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final numVideosPerPageTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->initVideosPerPageMapStandard()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->initVideosPerPageMapTest6725()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->initLomoFragOffsetRight6725()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    mul-int/2addr v0, v2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->computeNumVideosToFetchPerBatch(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static computeStandardNumVideosPerPage(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumCWVideosPerPageTableByOrientation(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getLomoFragOffsetRightPx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getPeakByOrientation(Landroid/app/Activity;II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getNumCWVideosPerPageTableByOrientation(II)I
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static getNumVideosPerPageTableByOrientation(II)I
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$ui$experience$BrowseExperience:[I

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getPeakByOrientation(Landroid/app/Activity;II)I
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$ui$experience$BrowseExperience:[I

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static initLomoFragOffsetRight6725()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x1e

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v3, 0x78

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8c

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x32

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x14

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initVideosPerPageMapStandard()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initVideosPerPageMapTest6725()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_2:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_5:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
