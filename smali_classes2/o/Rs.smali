.class public final Lo/Rs;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/Tf;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/Tf;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Random;

.field public static final e:Lo/Rs;

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/Cb;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/Rs;

    invoke-direct {v0}, Lo/Rs;-><init>()V

    sput-object v0, Lo/Rs;->e:Lo/Rs;

    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo/Rs;->d:Ljava/util/Random;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/Rs;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/Rs;->c:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lo/Rs;->b:Ljava/util/HashSet;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/Rs;->f:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;)Lo/Tf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Tf;",
            ">;)",
            "Lo/Tf;"
        }
    .end annotation

    .line 240
    sget-object v0, Lo/Rs;->c:Ljava/util/HashMap;

    sget-object v1, Lo/Rs;->d:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Tf;

    invoke-virtual {p1}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Tf;

    return-object p1
.end method

.method private final c(Lo/Tf;Lo/Rq;)Lo/Tf;
    .locals 16

    move-object/from16 v0, p0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    sget-object v4, Lo/Rs;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 149
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object v4

    .line 150
    sget-object v5, Lo/Rs;->i:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 155
    :cond_0
    invoke-interface/range {p2 .. p2}, Lo/Rq;->c()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    move-object/from16 v8, p2

    .line 156
    invoke-interface {v8, v7}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const-string v10, "adapterData"

    .line 157
    invoke-static {v9, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v10

    iget-object v10, v10, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    sget-object v11, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-ne v10, v11, :cond_1

    .line 158
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v9

    iget-object v9, v9, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v9, :cond_4

    .line 159
    move-object v10, v9

    check-cast v10, Lo/Bi;

    invoke-static {v10}, Lo/RL;->a(Lo/Bi;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    .line 162
    sget-object v10, Lo/Rs;->c:Ljava/util/HashMap;

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v9}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v11

    const-string v12, "movie.topLevelId"

    invoke-static {v11, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    .line 165
    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 166
    move-object v12, v2

    check-cast v12, Ljava/util/List;

    .line 163
    invoke-direct {v0, v10, v11, v12, v9}, Lo/Rs;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/Tf;)V

    goto :goto_2

    .line 170
    :cond_1
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v10

    iget-object v10, v10, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    sget-object v11, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-ne v10, v11, :cond_4

    .line 172
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v13, v9, v11

    if-eqz v13, :cond_3

    .line 175
    move-object v14, v13

    check-cast v14, Lo/Bi;

    invoke-static {v14}, Lo/RL;->a(Lo/Bi;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3

    if-nez v12, :cond_2

    .line 180
    sget-object v14, Lo/Rs;->c:Ljava/util/HashMap;

    check-cast v14, Ljava/util/Map;

    invoke-virtual {v13}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v15

    const-string v5, "episode.topLevelId"

    invoke-static {v15, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 184
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    .line 185
    move-object v14, v1

    check-cast v14, Ljava/util/List;

    .line 186
    move-object v15, v2

    check-cast v15, Ljava/util/List;

    .line 183
    invoke-direct {v0, v5, v14, v15, v13}, Lo/Rs;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/Tf;)V

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 195
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 196
    check-cast v3, Ljava/util/List;

    .line 195
    invoke-direct {v0, v3}, Lo/Rs;->a(Ljava/util/List;)Lo/Tf;

    move-result-object v6

    goto :goto_3

    .line 198
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 199
    check-cast v2, Ljava/util/List;

    .line 198
    invoke-direct {v0, v2}, Lo/Rs;->a(Ljava/util/List;)Lo/Tf;

    move-result-object v6

    goto :goto_3

    .line 201
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 202
    check-cast v1, Ljava/util/List;

    .line 201
    invoke-direct {v0, v1}, Lo/Rs;->a(Ljava/util/List;)Lo/Tf;

    move-result-object v6

    :cond_8
    :goto_3
    return-object v6

    .line 151
    :cond_9
    :goto_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "User profile is null"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v6
.end method

.method private final c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/Tf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;",
            "Lo/Tf;",
            ")V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    .line 217
    invoke-virtual {p4}, Lo/Tf;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RJ;->b(Ljava/lang/String;)Lo/Td;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lo/Td;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 223
    :cond_1
    sget-object v0, Lo/Rs;->i:Ljava/lang/String;

    invoke-virtual {p4}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v0

    if-nez v0, :cond_2

    .line 225
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_2
    iget v1, v0, Lo/Aa;->mBookmarkInSecond:I

    invoke-virtual {p4}, Lo/Tf;->T()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 228
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_3
    iget p1, v0, Lo/Aa;->mBookmarkInSecond:I

    invoke-virtual {p4}, Lo/Tf;->R()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 230
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_4
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final d(Lo/Tf;Lo/Rq;Z)Lo/Tf;
    .locals 14

    .line 297
    invoke-interface/range {p2 .. p2}, Lo/Rq;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v0, :cond_e

    move-object/from16 v5, p2

    .line 298
    invoke-interface {v5, v2}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const-string v7, "adapterData"

    .line 299
    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v7

    if-nez v7, :cond_0

    .line 301
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    const-string v6, "videoAndProfileData should not be null"

    .line 302
    invoke-interface {v4, v6}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 306
    :cond_0
    iget-object v8, v7, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v9, "videoAndProfileData.video"

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 308
    iget v8, v7, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->c:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_d

    .line 309
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v6

    .line 310
    aget-object v8, v6, v1

    const-string v10, "offlineVideoDetails[0]"

    invoke-static {v8, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lo/Tf;->ad()Z

    move-result v8

    const-string v10, "detail"

    if-eqz v8, :cond_3

    if-eqz p3, :cond_3

    .line 311
    sget-object v0, Lo/Rs;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    array-length v0, v6

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, v6, v1

    .line 313
    sget-object v3, Lo/Rs;->b:Ljava/util/HashSet;

    invoke-static {v2, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    move-object v3, v2

    check-cast v3, Lo/Bi;

    invoke-static {v3}, Lo/RL;->a(Lo/Bi;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    :cond_2
    sget-object v0, Lo/Rs;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-object v4

    .line 323
    :cond_3
    array-length v4, v6

    move v8, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v11, v6, v3

    add-int/lit8 v8, v8, 0x1

    .line 326
    invoke-static {v11, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lo/Tf;->V()I

    move-result v12

    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result v13

    if-ne v12, v13, :cond_4

    invoke-virtual {v11}, Lo/Tf;->X()I

    move-result v11

    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v12

    if-ne v11, v12, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v3, v8, 0x1

    .line 332
    array-length v4, v6

    :goto_4
    if-ge v3, v4, :cond_c

    .line 333
    aget-object v10, v6, v3

    .line 335
    move-object v11, v10

    check-cast v11, Lo/Bi;

    invoke-static {v11}, Lo/RL;->a(Lo/Bi;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "episodeDetail"

    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p3, :cond_9

    .line 343
    invoke-virtual {v10}, Lo/Tf;->X()I

    move-result v11

    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v12

    if-ne v11, v12, :cond_7

    invoke-virtual {v10}, Lo/Tf;->V()I

    move-result v11

    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result v12

    if-gt v11, v12, :cond_8

    :cond_7
    invoke-virtual {v10}, Lo/Tf;->X()I

    move-result v11

    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v12

    if-le v11, v12, :cond_b

    :cond_8
    return-object v10

    .line 350
    :cond_9
    invoke-virtual {v10}, Lo/Tf;->V()I

    move-result v11

    .line 349
    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result v12

    add-int/2addr v12, v9

    if-ne v11, v12, :cond_a

    invoke-virtual {v10}, Lo/Tf;->X()I

    move-result v11

    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v12

    if-ne v11, v12, :cond_a

    return-object v10

    .line 357
    :cond_a
    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result v11

    .line 355
    iget-object v12, v7, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v13

    invoke-virtual {v12, v13}, Lo/Tf;->a(I)I

    move-result v12

    if-ne v11, v12, :cond_b

    invoke-virtual {v10}, Lo/Tf;->X()I

    move-result v11

    .line 356
    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v12

    add-int/2addr v12, v9

    if-ne v11, v12, :cond_b

    invoke-virtual {v10}, Lo/Tf;->V()I

    move-result v11

    if-ne v11, v9, :cond_b

    return-object v10

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move v3, v8

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v4
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lo/Tf;
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    sget-object v0, Lo/Rs;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Tf;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lo/Tf;
    .locals 6

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    const-string v1, "offlineUi"

    .line 49
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/RJ;->b()Lo/Rq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 52
    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current offline video is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v1

    .line 58
    :cond_0
    move-object v3, v1

    check-cast v3, Lo/Tf;

    .line 60
    invoke-virtual {v2}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_1

    .line 62
    sget-object v1, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {v1}, Lo/gy$Activity;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-direct {p0, v2, v0}, Lo/Rs;->c(Lo/Tf;Lo/Rq;)Lo/Tf;

    move-result-object v3

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_5

    .line 66
    sget-object v1, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {v1}, Lo/gy$Activity;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, v2, v0, v1}, Lo/Rs;->d(Lo/Tf;Lo/Rq;Z)Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v3, v1

    goto :goto_0

    .line 71
    :cond_2
    invoke-direct {p0, v2, v0}, Lo/Rs;->c(Lo/Tf;Lo/Rq;)Lo/Tf;

    move-result-object v0

    move-object v3, v0

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 78
    sget-object v0, Lo/Rs;->a:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_4
    sget-object v0, Lo/Rs;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v3

    .line 74
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "invalid video type"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_6
    return-object v1
.end method

.method public final c(Ljava/lang/String;)I
    .locals 10

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    const-string v1, "offlineUi"

    .line 88
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/RJ;->b()Lo/Rq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 91
    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current offline video is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return v1

    .line 97
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 99
    invoke-virtual {v2}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_4

    .line 100
    invoke-interface {v0}, Lo/Rq;->c()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 101
    invoke-interface {v0, v4}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const-string v6, "adapterData"

    .line 102
    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v6

    if-nez v6, :cond_1

    .line 104
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v5

    const-string v6, "videoAndProfileData should not be null"

    .line 105
    invoke-interface {v5, v6}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_1
    iget-object v6, v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v7, "videoAndProfileData.video"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 113
    move-object v9, v8

    check-cast v9, Lo/Bi;

    invoke-static {v9}, Lo/RL;->a(Lo/Bi;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "detail"

    .line 114
    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 116
    invoke-virtual {v8}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method public final d()V
    .locals 1

    .line 26
    sget-object v0, Lo/Rs;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    sget-object v0, Lo/Rs;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 28
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lo/Rs;->i:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 33
    sget-object v1, Lo/Rs;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Tf;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final d(Ljava/lang/String;Lo/Tf;)Z
    .locals 9

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    const-string v1, "offlineUi"

    .line 251
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/RJ;->b()Lo/Rq;

    move-result-object v0

    .line 254
    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 255
    invoke-interface {v0}, Lo/Rq;->c()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, "it"

    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    .line 256
    invoke-interface {v0, v3}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const-string v7, "adapterData"

    .line 257
    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v6

    if-nez v6, :cond_0

    .line 259
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoAndProfileData should not be null list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lo/Rq;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_0
    iget-object v7, v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v8, "videoAndProfileData.video"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    iget-object v6, v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    .line 266
    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v7

    .line 265
    invoke-virtual {v6, v7}, Lo/Tf;->a(I)I

    move-result v6

    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result v7

    if-ne v6, v7, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 275
    :goto_2
    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    .line 277
    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v0

    invoke-virtual {p2}, Lo/Tf;->X()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Lo/Tf;->V()I

    move-result p2

    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result p1

    add-int/2addr p1, v5

    if-ne p2, p1, :cond_4

    return v5

    .line 281
    :cond_3
    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result p1

    invoke-virtual {p2}, Lo/Tf;->X()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Lo/Tf;->V()I

    move-result p1

    if-ne p1, v5, :cond_4

    return v5

    :cond_4
    return v1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 23
    sput-object p1, Lo/Rs;->i:Ljava/lang/String;

    return-void
.end method
