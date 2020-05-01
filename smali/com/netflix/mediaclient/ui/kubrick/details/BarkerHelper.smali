.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;
.super Ljava/lang/Object;
.source "BarkerHelper.java"


# static fields
.field public static final FULL_SCREEN_COLUMNS:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getDisplayPageRefreshTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
