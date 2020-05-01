.class public Lcom/netflix/mediaclient/ui/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchUtils"

.field private static currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field private static final numPeopleColumnsTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final numRelatedColumnsTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final numVideoColumnsTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeMaxResultsForPeople(Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0x8

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumPeopleGridCols(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    rem-int v0, v1, v2

    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static computeMaxResultsForVideos(Landroid/content/Context;)I
    .locals 2

    const/16 v0, 0x15

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumVideoGridCols(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static getMaxResultsPeople(Landroid/content/Context;)I
    .locals 6

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v1, "SearchUtils"

    const-string/jumbo v2, "getMaxResultsPeople, Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForPeople(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForPeople(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaxResultsRelated(Landroid/content/Context;)I
    .locals 4

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v1, "SearchUtils"

    const-string/jumbo v2, "getMaxResultsRelated, Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    goto :goto_0
.end method

.method public static getMaxResultsVideos(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForVideos(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getNumPeopleGridCols(Landroid/content/Context;)I
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumPeopleGridCols, Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNumRelatedGridCols(Landroid/content/Context;)I
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumRelatedGridCols, Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNumVideoGridCols(Landroid/content/Context;)I
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumVideoGridCols, Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getPeopleImageAspectRatio()D
    .locals 4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static getSearchFragLayout()I
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0300f4

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0300f5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchViewLayoutPeople()I
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0300f1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0300f3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchViewLayoutRelated()I
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0300f2

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0300f3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoImageAspectRatio()D
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-wide v0, 0x3ff6e147a0000000L    # 1.4299999475479126

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/high16 v0, 0x3fe2000000000000L    # 0.5625

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static initColumnsTable()V
    .locals 3

    const-string/jumbo v0, "SearchUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init\'ing columns table for seach experience: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTablePhoneLandscape()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTablePhonePortrait()V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTableTabletLandscape()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTableTabletPortrait()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intColumnTablePhoneLandscape()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x6

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x6

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static intColumnTablePhonePortrait()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static intColumnTableTabletLandscape()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x6

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static intColumnTableTabletPortrait()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static sanitizeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "\\s+"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SearchUtils"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sanitized query from: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-eq p0, v0, :cond_0

    sput-object p0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->initColumnsTable()V

    :cond_0
    return-void
.end method

.method public static shouldHandleBackPress()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldOpenNewActivityForRelated()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldResetQueryOnTouch()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldShowVerticalBoxArt()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldUpperCaseTitleLabels()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
