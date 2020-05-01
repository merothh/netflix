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

    .prologue
    const/4 v1, 0x2

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeMaxResultsForPeople(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 184
    const/16 v0, 0x8

    .line 185
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumPeopleGridCols(Landroid/content/Context;)I

    move-result v2

    .line 186
    if-lez v2, :cond_0

    .line 187
    const/4 v1, -0x1

    .line 188
    :goto_0
    if-eqz v1, :cond_0

    .line 189
    add-int/lit8 v1, v0, 0x1

    .line 190
    rem-int v0, v1, v2

    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    .line 194
    :cond_0
    return v0
.end method

.method private static computeMaxResultsForVideos(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 163
    const/16 v0, 0x15

    .line 165
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumVideoGridCols(Landroid/content/Context;)I

    move-result v1

    .line 166
    if-lez v1, :cond_0

    .line 167
    rem-int v1, v0, v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    sub-int/2addr v0, v1

    .line 173
    :cond_0
    return v0
.end method

.method public static getMaxResultsPeople(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 198
    if-nez p0, :cond_0

    .line 199
    const-string/jumbo v1, "SearchUtils"

    const-string/jumbo v2, "getMaxResultsPeople, Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    .line 204
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    .line 206
    sget-object v4, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 216
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForPeople(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 209
    :pswitch_0
    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForPeople(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaxResultsRelated(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 222
    if-nez p0, :cond_0

    .line 223
    const-string/jumbo v1, "SearchUtils"

    const-string/jumbo v2, "getMaxResultsRelated, Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    .line 227
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    .line 229
    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 233
    :cond_2
    const/16 v0, 0x28

    goto :goto_0
.end method

.method public static getMaxResultsVideos(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 237
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForVideos(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getNumPeopleGridCols(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumPeopleGridCols, Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x2

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 114
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 115
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

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumRelatedGridCols, Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x2

    .line 137
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 136
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 137
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

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumVideoGridCols, Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x2

    .line 126
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 125
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 126
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

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 90
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :pswitch_0
    return-wide v2

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static getSearchFragLayout()I
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const v0, 0x7f0300f4

    :goto_0
    return v0

    .line 54
    :pswitch_0
    const v0, 0x7f0300f5

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchViewLayoutPeople()I
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const v0, 0x7f0300f1

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const v0, 0x7f0300f3

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchViewLayoutRelated()I
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    const v0, 0x7f0300f2

    :goto_0
    return v0

    .line 72
    :pswitch_0
    const v0, 0x7f0300f3

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoImageAspectRatio()D
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const-wide v0, 0x3ff6e147a0000000L    # 1.4299999475479126

    :goto_0
    return-wide v0

    .line 82
    :pswitch_0
    const-wide/high16 v0, 0x3fe2000000000000L    # 0.5625

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static initColumnsTable()V
    .locals 3

    .prologue
    .line 141
    const-string/jumbo v0, "SearchUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
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

    .line 144
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTablePhoneLandscape()V

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTablePhonePortrait()V

    .line 153
    :goto_0
    return-void

    .line 146
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTableTabletLandscape()V

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTableTabletPortrait()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intColumnTablePhoneLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 267
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 268
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 269
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 271
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    const/4 v3, 0x6

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 284
    const/4 v3, 0x6

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method private static intColumnTablePhonePortrait()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 241
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 242
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 243
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 245
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method private static intColumnTableTabletLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 319
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 320
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 321
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 323
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    const/4 v3, 0x6

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    invoke-virtual {v2, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    return-void
.end method

.method private static intColumnTableTabletPortrait()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 293
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 294
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 295
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 297
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 299
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 301
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 305
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 311
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method public static sanitizeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 382
    const-string/jumbo v0, "\\s+"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "SearchUtils"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
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

    .line 386
    :cond_0
    return-object v0
.end method

.method public static setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-eq p0, v0, :cond_0

    .line 42
    sput-object p0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->initColumnsTable()V

    .line 45
    :cond_0
    return-void
.end method

.method public static shouldHandleBackPress()Z
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 367
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 365
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldOpenNewActivityForRelated()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 101
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldResetQueryOnTouch()Z
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 376
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 374
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldShowVerticalBoxArt()Z
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 347
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldUpperCaseTitleLabels()Z
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 358
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 356
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
