.class public Lcom/netflix/mediaclient/ui/search/SearchUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    }
.end annotation


# static fields
.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field private static final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c:Landroid/util/SparseArray;

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SearchUtils"

    const-string v0, "getNumRelatedGridCols, Context is null"

    .line 122
    invoke-static {p0, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 126
    :cond_0
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    .line 127
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    .line 128
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static a()Z
    .locals 2

    .line 101
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$4;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static a(Landroid/os/Bundle;)Z
    .locals 6

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "instance_state_timestamp"

    .line 164
    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-lez p0, :cond_0

    cmp-long p0, v0, v4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    .line 203
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static b()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static c()I
    .locals 2

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$4;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 86
    sget v0, Lo/Zt$LoaderManager;->t:I

    return v0

    .line 84
    :cond_0
    sget v0, Lo/Zt$LoaderManager;->r:I

    return v0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 2

    .line 176
    invoke-static {}, Lo/ady;->g()I

    move-result v0

    .line 178
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    .line 180
    div-int/2addr v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int v0, v0, p0

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SearchUtils"

    const-string v0, "getNumVideoGridCols, Context is null"

    .line 111
    invoke-static {p0, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 115
    :cond_0
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    .line 116
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    .line 117
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-eq p0, v0, :cond_0

    .line 72
    sput-object p0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    .line 73
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->o()V

    :cond_0
    return-void
.end method

.method public static e()D
    .locals 2

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$4;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide v0, 0x3ff6e147a0000000L    # 1.4299999475479126

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe2000000000000L    # 0.5625

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "SearchUtils"

    const-string v1, "getMaxResultsRelated, Context is null"

    .line 189
    invoke-static {p0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 192
    :cond_0
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v1

    .line 193
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    if-ne v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 p0, 0x28

    return p0
.end method

.method static e(Landroid/os/Bundle;)V
    .locals 4

    .line 152
    invoke-static {}, Lo/fl;->i()Z

    move-result v0

    const-string v1, "instance_state_timestamp"

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lo/fl;->g()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lo/dO;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {}, Lo/dO;->i()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lo/dZ;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-static {}, Lo/dZ;->i()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 382
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 383
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 384
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json exception happened in debug Logging tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reason: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static f()J
    .locals 5

    .line 147
    invoke-static {}, Lo/fl;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lo/dZ;->i()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static g()Z
    .locals 2

    .line 287
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$4;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static h()Z
    .locals 2

    .line 296
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$4;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static i()I
    .locals 1

    .line 361
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/Zt$Fragment;->k:I

    goto :goto_0

    :cond_0
    sget v0, Lo/Zt$Fragment;->h:I

    :goto_0
    return v0
.end method

.method public static j()I
    .locals 1

    .line 356
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/Zt$Fragment;->f:I

    goto :goto_0

    :cond_0
    sget v0, Lo/Zt$Fragment;->g:I

    :goto_0
    return v0
.end method

.method public static k()I
    .locals 1

    .line 366
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/Zt$Fragment;->j:I

    goto :goto_0

    :cond_0
    sget v0, Lo/Zt$Fragment;->i:I

    :goto_0
    return v0
.end method

.method private static l()V
    .locals 5

    .line 207
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 208
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 210
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x3

    .line 213
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x4

    .line 216
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static m()I
    .locals 1

    .line 371
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/Zt$Fragment;->c:I

    goto :goto_0

    :cond_0
    sget v0, Lo/Zt$Fragment;->a:I

    :goto_0
    return v0
.end method

.method private static n()V
    .locals 7

    .line 227
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 228
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 230
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x4

    const/4 v5, 0x2

    .line 233
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v6, 0x5

    .line 236
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x6

    .line 239
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static o()V
    .locals 2

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$4;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->n()V

    .line 142
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->l()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->r()V

    .line 138
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->t()V

    :goto_0
    return-void
.end method

.method private static r()V
    .locals 6

    .line 267
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 268
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 270
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x3

    .line 273
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x4

    .line 279
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static t()V
    .locals 5

    .line 247
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 248
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 250
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x2

    .line 253
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x4

    .line 259
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
