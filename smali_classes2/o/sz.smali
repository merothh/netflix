.class public Lo/sz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sz$Application;,
        Lo/sz$TaskDescription;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private d:I

.field private final f:Landroid/os/HandlerThread;

.field private g:I

.field private final h:Landroid/os/Handler;

.field private i:Lo/rh;

.field private j:I

.field private final k:Lo/pM;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/BW;",
            "Lo/sE;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/BW;",
            "Lo/sz$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

.field private r:Lo/sJ;

.field private t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const-class v0, Lo/sz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/sz;->a:Ljava/lang/String;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/sz;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/pM;Z)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 63
    iput v0, p0, Lo/sz;->d:I

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lo/sz;->g:I

    .line 83
    iput v0, p0, Lo/sz;->j:I

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/sz;->l:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/sz;->n:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/sz;->m:Ljava/util/Map;

    .line 709
    new-instance v0, Lo/sz$6;

    invoke-direct {v0, p0}, Lo/sz$6;-><init>(Lo/sz;)V

    iput-object v0, p0, Lo/sz;->t:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lo/sz;->b:Landroid/content/Context;

    .line 157
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/sz;->c:Landroid/os/Handler;

    .line 158
    iput-object p3, p0, Lo/sz;->k:Lo/pM;

    .line 160
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "NfManifestCacheWorkerThread"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lo/sz;->f:Landroid/os/HandlerThread;

    .line 162
    iget-object p1, p0, Lo/sz;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lo/sz;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/sz;->h:Landroid/os/Handler;

    if-eqz p4, :cond_0

    const/16 p1, 0xa

    .line 165
    iput p1, p0, Lo/sz;->d:I

    .line 167
    :cond_0
    invoke-direct {p0}, Lo/sz;->h()V

    .line 169
    iget-object p1, p0, Lo/sz;->h:Landroid/os/Handler;

    new-instance p2, Lo/sF;

    invoke-direct {p2, p0}, Lo/sF;-><init>(Lo/sz;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lo/sz;)Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/sz;->o:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lo/sz;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Ae;

    iget-object v5, v5, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :cond_1
    const/4 v5, 0x0

    .line 472
    :goto_0
    invoke-direct {v0, v5, v3}, Lo/sz;->e(ZZ)Lo/re;

    move-result-object v15

    .line 473
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/Ae;

    .line 475
    invoke-static {v6}, Lo/xx;->d(Lo/Ae;)Lo/xx;

    move-result-object v7

    .line 476
    new-instance v8, Lo/BW;

    iget-wide v9, v6, Lo/Ae;->e:J

    iget v11, v0, Lo/sz;->g:I

    iget v12, v0, Lo/sz;->j:I

    iget-boolean v13, v7, Lo/xx;->c:Z

    iget-boolean v7, v7, Lo/xx;->b:Z

    const/16 v25, 0x0

    const-string v23, ""

    const-string v24, ""

    move-object/from16 v16, v8

    move-wide/from16 v17, v9

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v7

    invoke-direct/range {v16 .. v25}, Lo/BW;-><init>(JIIZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 477
    iget-object v7, v0, Lo/sz;->l:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/sE;

    if-eqz v7, :cond_2

    .line 480
    invoke-interface {v7}, Lo/sE;->Q()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 481
    invoke-direct/range {p0 .. p0}, Lo/sz;->j()V

    const/4 v7, 0x0

    :cond_2
    if-nez v7, :cond_3

    .line 485
    iget-object v9, v0, Lo/sz;->o:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    if-eqz v9, :cond_3

    .line 486
    invoke-direct/range {p0 .. p0}, Lo/sz;->f()Lo/sJ;

    move-result-object v7

    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lo/sJ;->d(Lo/BW;J)Lo/sB;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 491
    iget-object v9, v0, Lo/sz;->l:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v7, :cond_5

    .line 495
    iget-object v7, v0, Lo/sz;->l:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/sE;

    .line 496
    iget-object v9, v6, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {v7, v9}, Lo/sE;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 498
    invoke-static {}, Lo/eR;->f()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 500
    invoke-interface {v7}, Lo/sE;->al()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v15, :cond_4

    .line 501
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->drmSessionId()I

    move-result v7

    iget v9, v15, Lo/re;->a:I

    if-eq v7, v9, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_5

    .line 506
    sget-object v7, Lo/sz;->a:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    iget-wide v9, v6, Lo/Ae;->e:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v4

    const-string v6, "skip cached manifest for %d"

    invoke-static {v7, v6, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 510
    :cond_5
    iget-object v7, v0, Lo/sz;->m:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 511
    sget-object v7, Lo/sz;->a:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    iget-wide v10, v6, Lo/Ae;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "skip pending manifest for %d"

    invoke-static {v7, v10, v9}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 512
    iget-object v7, v0, Lo/sz;->m:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/sz$TaskDescription;

    .line 513
    iget-object v6, v6, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v7, v6}, Lo/sz$TaskDescription;->c(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    goto/16 :goto_1

    .line 516
    :cond_6
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v7, v0, Lo/sz;->m:Ljava/util/Map;

    new-instance v9, Lo/sz$TaskDescription;

    iget-object v10, v6, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-direct {v9, v10}, Lo/sz$TaskDescription;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 518
    iget-object v5, v6, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 519
    :goto_3
    sget-object v7, Lo/sz;->a:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    iget-wide v9, v6, Lo/Ae;->e:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v4

    const-string v6, "will fetch manifest for %d"

    invoke-static {v7, v6, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 521
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 522
    sget-object v1, Lo/sz;->a:Ljava/lang/String;

    const-string v2, "prepare no manifest to fetch"

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lo/pW;

    .line 527
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/BW;

    add-int/lit8 v16, v4, 0x1

    .line 528
    new-instance v17, Lo/pW;

    invoke-virtual {v6}, Lo/BW;->e()J

    move-result-wide v7

    invoke-virtual {v6}, Lo/BW;->b()Z

    move-result v9

    invoke-virtual {v6}, Lo/BW;->c()Z

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, v17

    move-object v11, v15

    invoke-direct/range {v6 .. v14}, Lo/pW;-><init>(JZZLo/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    aput-object v17, v2, v4

    move/from16 v4, v16

    goto :goto_4

    .line 531
    :cond_a
    iget-object v6, v0, Lo/sz;->k:Lo/pM;

    sget-object v8, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    const/4 v10, 0x0

    new-instance v11, Lo/sz$4;

    invoke-direct {v11, v0, v1}, Lo/sz$4;-><init>(Lo/sz;Ljava/util/List;)V

    const/4 v12, 0x0

    move-object v7, v2

    move v9, v5

    invoke-virtual/range {v6 .. v12}, Lo/pM;->e([Lo/pW;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;ZLjava/lang/String;Lo/pS;Lo/P;)V

    .line 551
    iget-object v1, v0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v2, Lo/sz$1;

    invoke-direct {v2, v0}, Lo/sz$1;-><init>(Lo/sz;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/List;Lo/sD$ActionBar;ZZLjava/lang/String;Lo/P;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BW;",
            ">;",
            "Lo/sD$ActionBar;",
            "ZZ",
            "Ljava/lang/String;",
            "Lo/P;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/BW;

    xor-int/lit8 v7, p3, 0x1

    move/from16 v11, p4

    .line 379
    invoke-direct {v0, v11, v7}, Lo/sz;->e(ZZ)Lo/re;

    move-result-object v17

    .line 381
    iget-object v7, v0, Lo/sz;->m:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/sz$TaskDescription;

    if-eqz v7, :cond_2

    .line 383
    sget-object v8, Lo/sz;->a:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lo/BW;->e()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v6

    const-string v12, "fetchStreamingManifests is pending %d ..."

    invoke-static {v8, v12, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p3, :cond_1

    .line 386
    sget-object v8, Lo/sz;->a:Ljava/lang/String;

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v5, v10, v6

    const-string v6, "fetchStreamingManifests is pending %s, try STANDARD request for playback."

    invoke-static {v8, v6, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    new-instance v6, Lo/pW;

    .line 390
    invoke-virtual {v5}, Lo/BW;->e()J

    move-result-wide v13

    .line 391
    invoke-virtual {v5}, Lo/BW;->b()Z

    move-result v15

    invoke-virtual {v5}, Lo/BW;->c()Z

    move-result v16

    .line 392
    invoke-virtual {v5}, Lo/BW;->i()Ljava/lang/String;

    move-result-object v18

    .line 393
    invoke-virtual {v5}, Lo/BW;->j()Ljava/lang/String;

    move-result-object v19

    .line 394
    invoke-virtual {v5}, Lo/BW;->g()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object v12, v6

    invoke-direct/range {v12 .. v20}, Lo/pW;-><init>(JZZLo/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 395
    iget-object v8, v0, Lo/sz;->k:Lo/pM;

    .line 397
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lo/sz;->c(Ljava/util/List;Lo/sD$ActionBar;)Lo/qc;

    move-result-object v5

    .line 396
    invoke-virtual {v8, v6, v5}, Lo/pM;->d(Lo/pW;Lo/pS;)Z

    move-result v5

    xor-int/2addr v9, v5

    :cond_1
    if-eqz v9, :cond_0

    .line 401
    invoke-virtual {v7, v1}, Lo/sz$TaskDescription;->a(Lo/sD$ActionBar;)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v6, Lo/pW;

    invoke-virtual {v5}, Lo/BW;->e()J

    move-result-wide v13

    .line 406
    invoke-virtual {v5}, Lo/BW;->b()Z

    move-result v15

    invoke-virtual {v5}, Lo/BW;->c()Z

    move-result v16

    .line 407
    invoke-virtual {v5}, Lo/BW;->i()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lo/BW;->j()Ljava/lang/String;

    move-result-object v19

    .line 408
    invoke-virtual {v5}, Lo/BW;->g()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object v12, v6

    invoke-direct/range {v12 .. v20}, Lo/pW;-><init>(JZZLo/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 405
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move/from16 v11, p4

    .line 412
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 416
    :cond_4
    iget-object v8, v0, Lo/sz;->k:Lo/pM;

    new-array v4, v6, [Lo/pW;

    .line 417
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Lo/pW;

    if-eqz p3, :cond_5

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    :goto_1
    move-object v10, v2

    .line 421
    invoke-direct {v0, v3, v1}, Lo/sz;->c(Ljava/util/List;Lo/sD$ActionBar;)Lo/qc;

    move-result-object v13

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    .line 416
    invoke-virtual/range {v8 .. v14}, Lo/pM;->e([Lo/pW;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;ZLjava/lang/String;Lo/pS;Lo/P;)V

    .line 424
    iget-object v1, v0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v2, Lo/sz$11;

    invoke-direct {v2, v0}, Lo/sz$11;-><init>(Lo/sz;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BW;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 595
    invoke-static/range {p2 .. p2}, Lo/st;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sE;

    if-nez v2, :cond_1

    .line 598
    sget-object v2, Lo/sz;->a:Ljava/lang/String;

    const-string v3, "M-CACHE, processManifestResponse has error"

    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_1
    invoke-interface {v2}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v5, p1

    invoke-static {v5, v3, v4}, Lo/sz;->c(Ljava/util/List;J)Lo/BW;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    .line 604
    sget-object v7, Lo/sz;->a:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    .line 605
    invoke-interface {v2}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "processManifestResponse got a manifest that we didn\'t request %d"

    .line 604
    invoke-static {v7, v9, v8}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 606
    new-instance v7, Lo/BW;

    .line 607
    invoke-interface {v2}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget v13, v0, Lo/sz;->g:I

    iget v14, v0, Lo/sz;->j:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 608
    invoke-virtual {v3}, Lo/BW;->i()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lo/BW;->j()Ljava/lang/String;

    move-result-object v18

    .line 609
    invoke-virtual {v3}, Lo/BW;->g()Z

    move-result v19

    move-object v10, v7

    invoke-direct/range {v10 .. v19}, Lo/BW;-><init>(JIIZZLjava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v7

    .line 612
    :cond_2
    iget-object v7, v0, Lo/sz;->l:Ljava/util/Map;

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v7, v0, Lo/sz;->o:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    if-eqz v7, :cond_0

    .line 614
    instance-of v7, v2, Lo/sB;

    if-eqz v7, :cond_3

    .line 615
    iget-object v7, v0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v8, Lo/sz$Application;

    move-object v9, v2

    check-cast v9, Lo/sB;

    invoke-direct {v8, v0, v3, v9}, Lo/sz$Application;-><init>(Lo/sz;Lo/BW;Lo/sB;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    :cond_3
    sget-object v3, Lo/sz;->a:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v4

    const-string v2, "M-CACHE, add %d"

    invoke-static {v3, v2, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lo/sz;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/sz;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/sz;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/sz;->b(Ljava/util/List;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lo/sz;Lo/sE;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/sz;->b(Lo/sE;)V

    return-void
.end method

.method static synthetic b(Lo/sz;)I
    .locals 0

    .line 50
    iget p0, p0, Lo/sz;->g:I

    return p0
.end method

.method private b(Ljava/util/List;Lo/sD$ActionBar;ZLo/xx;Lo/P;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sD$ActionBar;",
            "Z",
            "Lo/xx;",
            "Lo/P;",
            ")V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lo/sz;->c:Landroid/os/Handler;

    new-instance v1, Lo/sz$5;

    invoke-direct {v1, p0, p1}, Lo/sz$5;-><init>(Lo/sz;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v0, p0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v8, Lo/sz$9;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lo/sz$9;-><init>(Lo/sz;Ljava/util/List;Lo/xx;Lo/sD$ActionBar;ZLo/P;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BW;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 574
    invoke-direct {p0, p1, p2}, Lo/sz;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/BW;

    .line 576
    iget-object v0, p0, Lo/sz;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sE;

    .line 577
    iget-object v1, p0, Lo/sz;->m:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sz$TaskDescription;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v1}, Lo/sz$TaskDescription;->b()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/sE;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 581
    invoke-direct {p0, p2, v0}, Lo/sz;->e(Lo/BW;Lo/sE;)V

    goto :goto_0

    .line 583
    :cond_1
    sget-object v0, Lo/LegacyErrorStrings;->al:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, p2, v0}, Lo/sz;->b(Lo/BW;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lo/BW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lo/sz;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sz$TaskDescription;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lo/sz$TaskDescription;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sD$ActionBar;

    .line 650
    invoke-direct {p0, p1, v1, p2}, Lo/sz;->d(Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lo/sE;)V
    .locals 5

    .line 700
    iget-object v0, p0, Lo/sz;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 702
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sE;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    sget-object v1, Lo/sz;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "M-CACHE, remove %d"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 704
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lo/sz;Ljava/util/List;Lo/sD$ActionBar;ZZLjava/lang/String;Lo/P;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p6}, Lo/sz;->a(Ljava/util/List;Lo/sD$ActionBar;ZZLjava/lang/String;Lo/P;)V

    return-void
.end method

.method public static c(Ljava/util/List;J)Lo/BW;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BW;",
            ">;J)",
            "Lo/BW;"
        }
    .end annotation

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BW;

    .line 69
    sget-object v1, Lo/sz;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lo/BW;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getManifestKey %d"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    invoke-virtual {v0}, Lo/BW;->e()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Ljava/util/List;Lo/sD$ActionBar;)Lo/qc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BW;",
            ">;",
            "Lo/sD$ActionBar;",
            ")",
            "Lo/qc;"
        }
    .end annotation

    .line 433
    new-instance v0, Lo/sz$2;

    invoke-direct {v0, p0, p1, p2}, Lo/sz$2;-><init>(Lo/sz;Ljava/util/List;Lo/sD$ActionBar;)V

    return-object v0
.end method

.method static synthetic c(Lo/sz;)Lo/sJ;
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/sz;->f()Lo/sJ;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lo/sz;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/sz;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic c(Lo/sz;Lo/BW;Lo/sE;Lo/sD$ActionBar;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lo/sz;->e(Lo/BW;Lo/sE;Lo/sD$ActionBar;Z)V

    return-void
.end method

.method static synthetic d(Lo/sz;)I
    .locals 0

    .line 50
    iget p0, p0, Lo/sz;->j:I

    return p0
.end method

.method private d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BW;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BW;

    .line 626
    invoke-direct {p0, v0, p2}, Lo/sz;->b(Lo/BW;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 678
    invoke-virtual {p1}, Lo/BW;->e()J

    move-result-wide v2

    .line 679
    iget-object p1, p0, Lo/sz;->c:Landroid/os/Handler;

    new-instance v6, Lo/sz$10;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/sz$10;-><init>(Lo/sz;JLo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lo/sz;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/sz;->n:Ljava/util/List;

    return-object p0
.end method

.method private e(ZZ)Lo/re;
    .locals 0

    if-nez p1, :cond_2

    .line 561
    iget-object p1, p0, Lo/sz;->i:Lo/rh;

    if-eqz p1, :cond_2

    .line 562
    invoke-static {}, Lo/eR;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 563
    :cond_0
    invoke-static {}, Lo/eR;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 567
    :cond_3
    iget-object p1, p0, Lo/sz;->i:Lo/rh;

    invoke-interface {p1}, Lo/rh;->b()Lo/re;

    move-result-object p1

    return-object p1
.end method

.method private e(Lo/BW;Lo/sE;)V
    .locals 3

    .line 632
    iget-object v0, p0, Lo/sz;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sz$TaskDescription;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Lo/sz$TaskDescription;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sD$ActionBar;

    const/4 v2, 0x0

    .line 637
    invoke-direct {p0, p1, p2, v1, v2}, Lo/sz;->e(Lo/BW;Lo/sE;Lo/sD$ActionBar;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lo/BW;Lo/sE;Lo/sD$ActionBar;Z)V
    .locals 8

    .line 660
    invoke-virtual {p1}, Lo/BW;->e()J

    move-result-wide v2

    .line 661
    iget-object p1, p0, Lo/sz;->c:Landroid/os/Handler;

    new-instance v7, Lo/sz$3;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lo/sz$3;-><init>(Lo/sz;JLo/sD$ActionBar;Lo/sE;Z)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lo/sz;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/sz;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic e(Lo/sz;Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/sz;->d(Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic f(Lo/sz;)Ljava/util/Map;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/sz;->m:Ljava/util/Map;

    return-object p0
.end method

.method private f()Lo/sJ;
    .locals 2

    .line 765
    iget-object v0, p0, Lo/sz;->r:Lo/sJ;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Lo/sJ;

    iget-object v1, p0, Lo/sz;->o:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;->a()Lo/BT;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/sJ;-><init>(Lo/BT;)V

    iput-object v0, p0, Lo/sz;->r:Lo/sJ;

    .line 768
    :cond_0
    iget-object v0, p0, Lo/sz;->r:Lo/sJ;

    return-object v0
.end method

.method private static synthetic g()V
    .locals 0

    .line 363
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;->c()V

    return-void
.end method

.method static synthetic g(Lo/sz;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/sz;->j()V

    return-void
.end method

.method static synthetic h(Lo/sz;)Ljava/util/Map;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/sz;->l:Ljava/util/Map;

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 91
    iget-object v0, p0, Lo/sz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->ordinal()I

    move-result v2

    iput v2, p0, Lo/sz;->g:I

    .line 94
    sget-object v2, Lo/sz$7;->a:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 103
    iput v1, p0, Lo/sz;->j:I

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lo/sz;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->e(Landroid/telephony/TelephonyManager;)I

    move-result v0

    iput v0, p0, Lo/sz;->j:I

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lo/sz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->d(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->d(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lo/sz;->j:I

    .line 105
    :goto_0
    sget-object v0, Lo/sz;->a:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v4, p0, Lo/sz;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget v2, p0, Lo/sz;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "updateCurrentNetworkType %s %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 107
    :cond_2
    iput v1, p0, Lo/sz;->g:I

    .line 108
    iput v1, p0, Lo/sz;->j:I

    :goto_1
    return-void
.end method

.method static synthetic i(Lo/sz;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/sz;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i()V
    .locals 0

    invoke-static {}, Lo/sz;->g()V

    return-void
.end method

.method static synthetic j(Lo/sz;)I
    .locals 0

    .line 50
    iget p0, p0, Lo/sz;->d:I

    return p0
.end method

.method private j()V
    .locals 4

    .line 694
    iget-object v0, p0, Lo/sz;->h:Landroid/os/Handler;

    iget-object v1, p0, Lo/sz;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    iget-object v0, p0, Lo/sz;->h:Landroid/os/Handler;

    iget-object v1, p0, Lo/sz;->t:Ljava/lang/Runnable;

    sget-wide v2, Lo/sz;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic k(Lo/sz;)V
    .locals 0

    invoke-direct {p0}, Lo/sz;->l()V

    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/sz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;->a(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    move-result-object v0

    iput-object v0, p0, Lo/sz;->o:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    .line 171
    invoke-direct {p0}, Lo/sz;->f()Lo/sJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/sJ;->d()I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Lo/sz;->e(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 363
    iget-object v0, p0, Lo/sz;->h:Landroid/os/Handler;

    sget-object v1, Lo/sG;->c:Lo/sG;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    iget-object v0, p0, Lo/sz;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public c(Ljava/lang/Long;Lo/xx;Lo/sD$ActionBar;)V
    .locals 6

    .line 181
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lo/sz;->b(Ljava/util/List;Lo/sD$ActionBar;ZLo/xx;Lo/P;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    sget-object p1, Lo/sz;->a:Ljava/lang/String;

    const-string v0, "prepare has list contains no movie"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v1, Lo/sz$12;

    invoke-direct {v1, p0, p1}, Lo/sz$12;-><init>(Lo/sz;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/util/List;Lo/sD$ActionBar;Lo/xx;Lo/P;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sD$ActionBar;",
            "Lo/xx;",
            "Lo/P;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 186
    invoke-direct/range {v0 .. v5}, Lo/sz;->b(Ljava/util/List;Lo/sD$ActionBar;ZLo/xx;Lo/P;)V

    return-void
.end method

.method public c(Lo/rh;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lo/sz;->i:Lo/rh;

    return-void
.end method

.method public d()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lo/sz;->h()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lo/sz;->e(Z)V

    return-void
.end method

.method public e(Ljava/lang/Long;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 8

    .line 274
    sget-object v0, Lo/sz;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "remove manifest %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getAudioCode()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getSubtitleCode()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    if-eqz p2, :cond_2

    .line 277
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive()Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 279
    iget-object p2, p0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v0, Lo/sz$8;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lo/sz$8;-><init>(Lo/sz;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    iget-object p2, p0, Lo/sz;->c:Landroid/os/Handler;

    new-instance v0, Lo/sz$14;

    invoke-direct {v0, p0, p1}, Lo/sz$14;-><init>(Lo/sz;Ljava/lang/Long;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 341
    sget-object v0, Lo/sz;->a:Ljava/lang/String;

    const-string v1, "clear all manifest"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lo/sz;->h:Landroid/os/Handler;

    new-instance v1, Lo/sz$15;

    invoke-direct {v1, p0, p1}, Lo/sz$15;-><init>(Lo/sz;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    iget-object p1, p0, Lo/sz;->c:Landroid/os/Handler;

    new-instance v0, Lo/sz$13;

    invoke-direct {v0, p0}, Lo/sz$13;-><init>(Lo/sz;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
