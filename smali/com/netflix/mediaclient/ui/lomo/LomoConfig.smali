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

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->initVideosPerPageMapStandard()V

    .line 33
    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->initVideosPerPageMapTest6725()V

    .line 34
    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->initLomoFragOffsetRight6725()V

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 159
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 166
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 178
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_0

    .line 179
    const/16 v0, 0xa

    .line 203
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_2

    .line 186
    const/4 v0, 0x6

    goto :goto_0

    .line 189
    :cond_2
    const/16 v0, 0xc

    goto :goto_0

    .line 196
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    .line 204
    invoke-static {v3, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v1

    mul-int/2addr v0, v1

    .line 203
    goto :goto_0

    .line 198
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    .line 199
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    .line 200
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    mul-int/2addr v0, v2

    const/4 v1, 0x4

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 198
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->computeNumVideosToFetchPerBatch(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static computeStandardNumVideosPerPage(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I
    .locals 2

    .prologue
    .line 250
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 251
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumCWVideosPerPageTableByOrientation(II)I

    move-result v0

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getLomoFragOffsetRightPx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    .prologue
    .line 262
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 263
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 265
    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getPeakByOrientation(Landroid/app/Activity;II)I

    move-result v0

    .line 266
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

    .prologue
    .line 227
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    .line 228
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 229
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 227
    return v0
.end method

.method public static getNumVideosPerPageTableByOrientation(II)I
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$ui$experience$BrowseExperience:[I

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 221
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 222
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 214
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    .line 215
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 216
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 217
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 209
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

    .prologue
    .line 233
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$ui$experience$BrowseExperience:[I

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    :pswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    .line 237
    :pswitch_1
    const/16 v0, 0x20

    goto :goto_0

    .line 240
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    .line 241
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 242
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 243
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 233
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

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1e

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 44
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 45
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 47
    const/16 v3, 0x78

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    const/16 v1, 0x8c

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    const/16 v1, 0x32

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 59
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 60
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 62
    invoke-virtual {v1, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    const/16 v3, 0x14

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {v2, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    const/16 v1, 0x14

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->lomoFragOffsetRightTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private static initVideosPerPageMapStandard()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 75
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 84
    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    const/4 v2, 0x5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private static initVideosPerPageMapTest6725()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 97
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 98
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 100
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    const/4 v1, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    const/4 v1, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_2:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 112
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 113
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 115
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 127
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 128
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 130
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 142
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 143
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 145
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    invoke-virtual {v2, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    const/4 v1, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_5:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method
