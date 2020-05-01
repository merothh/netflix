.class public Lo/QQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/QQ$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lo/QQ$TaskDescription;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

.field private final e:Lo/BE;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Cd;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Lo/Rv;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BY;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/QQ$TaskDescription;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/QQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/QQ;->i:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/QQ;->j:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/QQ;->f:Ljava/util/List;

    .line 87
    iput-object p1, p0, Lo/QQ;->c:Landroid/content/Context;

    .line 88
    sget-object p1, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    iget-object v0, p0, Lo/QQ;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object p1

    .line 89
    sget-object v0, Lo/BE;->b:Lo/BE$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/BE$StateListAnimator;->b(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BE;

    move-result-object p1

    iput-object p1, p0, Lo/QQ;->e:Lo/BE;

    .line 90
    iput-object p2, p0, Lo/QQ;->b:Lo/QQ$TaskDescription;

    .line 91
    iget-object p1, p0, Lo/QQ;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p1

    iput-object p1, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    .line 92
    iget-object p1, p0, Lo/QQ;->c:Landroid/content/Context;

    invoke-static {p1}, Lo/Rv;->b(Landroid/content/Context;)Lo/Rv;

    move-result-object p1

    iput-object p1, p0, Lo/QQ;->h:Lo/Rv;

    .line 94
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->n()Lo/CameraPrewarmService;

    move-result-object p1

    new-instance p2, Lo/QX;

    invoke-direct {p2, p0}, Lo/QX;-><init>(Lo/QQ;)V

    invoke-virtual {p1, p2}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lo/QQ;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/QQ;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lo/QY;

    invoke-direct {v1, p0}, Lo/QY;-><init>(Lo/QQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lo/QQ;->b:Lo/QQ$TaskDescription;

    iget-object v1, p0, Lo/QQ;->i:Ljava/util/Map;

    invoke-interface {v0, v1, p1, p2}, Lo/QQ$TaskDescription;->e(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lo/QQ;Lo/Bc;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lo/QQ;->e(Lo/Bc;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 455
    iget-object v0, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BY;

    .line 456
    iget-object v1, v1, Lo/BY;->z:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lo/QQ;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/QQ;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 5

    const-string v0, "offlineData"

    const-string v1, "updateDataAndNotify"

    .line 391
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lo/QQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lo/QQ;->e:Lo/BE;

    invoke-virtual {v0}, Lo/BE;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/QQ;->f:Ljava/util/List;

    .line 396
    :cond_0
    iget-object v0, p0, Lo/QQ;->e:Lo/BE;

    invoke-virtual {v0}, Lo/BE;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/QQ;->j:Ljava/util/List;

    const-string v0, "offlineData"

    const-string v2, "updateDataAndNotify profileCount=%d falkorCount=%d offlineCount=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 397
    iget-object v4, p0, Lo/QQ;->f:Ljava/util/List;

    .line 398
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lo/QQ;->i:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 397
    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 399
    iget-object v0, p0, Lo/QQ;->i:Ljava/util/Map;

    iget-object v1, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lo/Rn;->a(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lo/QQ;->f:Ljava/util/List;

    invoke-static {v1}, Lo/Rn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 401
    new-instance v2, Lo/Rb;

    invoke-direct {v2, p0, v0, v1}, Lo/Rb;-><init>(Lo/QQ;Ljava/util/List;Ljava/util/List;)V

    .line 402
    invoke-static {v2}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;IZLjava/lang/Runnable;)V
    .locals 15

    move-object/from16 v0, p3

    .line 238
    new-instance v1, Lo/nU$Activity;

    move-object/from16 v10, p1

    move-object/from16 v5, p2

    invoke-direct {v1, v10, v5}, Lo/nU$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, p0

    invoke-direct {p0, v1}, Lo/QQ;->e(Lo/nU;)V

    .line 240
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 241
    invoke-direct {p0}, Lo/QQ;->d()Lo/hW;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v9, 0x0

    sget-object v12, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v13, Lo/QQ$2;

    move-object v2, v13

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lo/QQ$2;-><init>(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v9

    move/from16 v6, p6

    move-object v7, v12

    move-object v8, v13

    invoke-interface/range {v2 .. v8}, Lo/hW;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    goto :goto_0

    .line 267
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_1

    .line 268
    invoke-direct {p0}, Lo/QQ;->d()Lo/hW;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v14, Lo/QQ$3;

    move-object v2, v14

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p6

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lo/QQ$3;-><init>(Lo/QQ;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 p2, v0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v12

    move-object/from16 p6, v13

    move-object/from16 p7, v14

    invoke-interface/range {p2 .. p7}, Lo/hW;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 486
    iget-object v0, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BY;

    .line 487
    iget v2, v1, Lo/BY;->F:I

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lo/BY;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;
    .locals 1

    if-eqz p3, :cond_1

    .line 518
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/QQ$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/QQ$5;-><init>(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method static synthetic c(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lo/QQ;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lo/QQ;)Lo/BE;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/QQ;->e:Lo/BE;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lo/BY;
    .locals 3

    .line 476
    iget-object v0, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BY;

    .line 477
    iget-object v2, v1, Lo/BY;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()V
    .locals 14

    .line 116
    iget-object v0, p0, Lo/QQ;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bi;

    .line 117
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/QQ;->c(Ljava/lang/String;)Lo/BY;

    move-result-object v2

    const-string v3, "offlineData"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    .line 120
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "falkor data missing %s"

    invoke-static {v3, v6, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 123
    :cond_1
    invoke-static {v2}, Lo/QQ;->e(Lo/BY;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lo/BY;->b:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lo/BY;->b:Ljava/lang/String;

    invoke-direct {p0, v6}, Lo/QQ;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    .line 124
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "episodeData missing %s"

    invoke-static {v3, v6, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0, v2}, Lo/QQ;->c(Lo/BY;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v5, [Ljava/lang/Object;

    .line 127
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "isImageMissing %s"

    invoke-static {v3, v6, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    goto :goto_0

    .line 134
    :cond_4
    invoke-interface {v1}, Lo/Bi;->E()I

    move-result v2

    .line 135
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v6

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v6

    if-ne v2, v6, :cond_0

    :cond_5
    new-array v5, v5, [Ljava/lang/Object;

    .line 136
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "recover %s"

    invoke-static {v3, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-interface {v1}, Lo/Bi;->o()Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v9

    .line 141
    invoke-interface {v1}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v10

    .line 142
    invoke-interface {v1}, Lo/Bi;->h()I

    move-result v11

    .line 143
    invoke-interface {v1}, Lo/Bi;->A()Z

    move-result v12

    new-instance v13, Lo/QW;

    invoke-direct {v13, p0}, Lo/QW;-><init>(Lo/QQ;)V

    move-object v6, p0

    .line 137
    invoke-direct/range {v6 .. v13}, Lo/QQ;->b(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;IZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object v0, p0, Lo/QQ;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cd;

    .line 152
    iget-object v2, v1, Lo/Cd;->b:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 153
    iget-object v2, p0, Lo/QQ;->h:Lo/Rv;

    iget-object v3, v1, Lo/Cd;->b:Ljava/lang/String;

    iget-object v1, v1, Lo/Cd;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lo/Rv;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method private static c(Lcom/netflix/mediaclient/android/app/Status;Lo/Bc;)V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serializeMetadataToDisc() got an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " videoDetails"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "offlineData"

    .line 377
    invoke-static {p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lo/QQ;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/QQ;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private c(Lo/BY;)Z
    .locals 3

    .line 497
    iget-object v0, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    iget-object v1, p1, Lo/BY;->a:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 502
    :cond_0
    invoke-static {p1}, Lo/QQ;->e(Lo/BY;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/BY;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    iget-object p1, p1, Lo/BY;->b:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    xor-int/2addr p1, v1

    return p1
.end method

.method static synthetic c(Lo/QQ;Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/QQ;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d()Lo/hW;
    .locals 1

    .line 159
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    return-object v0
.end method

.method private d(Lo/BE;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BE;",
            "Ljava/util/List<",
            "Lo/BY;",
            ">;)V"
        }
    .end annotation

    .line 446
    invoke-static {p1, p2}, Lo/Rj;->d(Lo/BE;Ljava/util/List;)V

    .line 447
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/BY;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 448
    iget-object v2, p2, Lo/BY;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "offlineData"

    const-string v2, "deleteVideosAndImages videoId = %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    iget-object v0, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    iget-object p2, p2, Lo/BY;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/QQ;)V
    .locals 0

    invoke-direct {p0}, Lo/QQ;->a()V

    return-void
.end method

.method static synthetic e(Lo/QQ;)Lo/hW;
    .locals 0

    .line 62
    invoke-direct {p0}, Lo/QQ;->d()Lo/hW;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 386
    iget-object v0, p0, Lo/QQ;->n:Landroid/os/Handler;

    new-instance v1, Lo/QV;

    invoke-direct {v1, p0}, Lo/QV;-><init>(Lo/QQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/android/app/Status;Lo/Bc;)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lo/QQ;->c(Lcom/netflix/mediaclient/android/app/Status;Lo/Bc;)V

    return-void
.end method

.method private e(Lo/Bc;Ljava/lang/String;)V
    .locals 6

    .line 353
    invoke-static {}, Lo/fo;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/fo;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    .line 355
    invoke-interface {p1}, Lo/Bc;->bh()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    .line 358
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v4

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lo/Bc;->bh()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lo/QQ;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object v4

    .line 354
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    .line 360
    iget-object v0, p0, Lo/QQ;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    .line 361
    invoke-interface {p1}, Lo/Bc;->ba()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    .line 364
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v4

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lo/Bc;->ba()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p2, p1}, Lo/QQ;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object p1

    .line 360
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/QQ;Lo/nU;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/QQ;->e(Lo/nU;)V

    return-void
.end method

.method private e(Lo/nU;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->i()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lo/nS;->b(Lo/nU;)V

    :cond_0
    return-void
.end method

.method private static e(Lo/BY;)Z
    .locals 1

    .line 509
    iget p0, p0, Lo/BY;->F:I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic f(Lo/QQ;)V
    .locals 0

    invoke-direct {p0}, Lo/QQ;->c()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 408
    iget-object v0, p0, Lo/QQ;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v1, p0, Lo/QQ;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Cd;

    .line 415
    iget-object v3, v2, Lo/Cd;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/QQ;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 420
    :cond_2
    iget-object v1, p0, Lo/QQ;->e:Lo/BE;

    invoke-static {v1, v0}, Lo/Rj;->a(Lo/BE;Ljava/util/List;)V

    return-void
.end method

.method static synthetic g(Lo/QQ;)V
    .locals 0

    invoke-direct {p0}, Lo/QQ;->b()V

    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lo/QQ;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lo/QQ;->g:Z

    .line 214
    invoke-direct {p0}, Lo/QQ;->e()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lo/QQ;)V
    .locals 0

    invoke-direct {p0}, Lo/QQ;->h()V

    return-void
.end method

.method static synthetic i(Lo/QQ;)V
    .locals 0

    invoke-direct {p0}, Lo/QQ;->e()V

    return-void
.end method

.method private i()Z
    .locals 2

    .line 465
    iget-object v0, p0, Lo/QQ;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bi;

    .line 466
    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/QQ;->c(Ljava/lang/String;)Lo/BY;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .locals 5

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    iget-object v1, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BY;

    .line 427
    iget v3, v2, Lo/BY;->F:I

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 428
    iget-object v3, v2, Lo/BY;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lo/QQ;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BY;

    .line 432
    invoke-static {v2}, Lo/QQ;->e(Lo/BY;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 433
    iget-object v2, v2, Lo/BY;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 438
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "offlineData"

    const-string v3, "deleteShowsWithNoEpisodes %d shows"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    iget-object v0, p0, Lo/QQ;->e:Lo/BE;

    invoke-direct {p0, v0, v1}, Lo/QQ;->d(Lo/BE;Ljava/util/List;)V

    :cond_5
    return-void
.end method


# virtual methods
.method a(Lo/BC;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;I)V
    .locals 12

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lo/QQ;->n:Landroid/os/Handler;

    iget-object v1, p0, Lo/QQ;->e:Lo/BE;

    invoke-static {v0, p1, v1}, Lo/Rj;->d(Landroid/os/Handler;Lo/BC;Lo/BE;)V

    .line 201
    iget-object v0, p0, Lo/QQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object v0, p0, Lo/QQ;->h:Lo/Rv;

    invoke-interface {p1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/Rv;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->c:Ljava/lang/String;

    .line 206
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 208
    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    sget-object p2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne p1, p2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    new-instance v11, Lo/QZ;

    invoke-direct {v11, p0}, Lo/QZ;-><init>(Lo/QQ;)V

    move-object v4, p0

    move v9, p3

    .line 204
    invoke-direct/range {v4 .. v11}, Lo/QQ;->b(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;IZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method b(Landroid/os/Handler;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/QQ;->n:Landroid/os/Handler;

    return-void
.end method

.method b(Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;",
            "Ljava/util/List<",
            "Lo/Bi;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "offlineData"

    const-string v2, "onPlayablesDeleted %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Lo/QQ;->i:Ljava/util/Map;

    .line 179
    invoke-static {p2}, Lo/Rn;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lo/QQ;->e:Lo/BE;

    invoke-direct {p0, p2, p1}, Lo/QQ;->d(Lo/BE;Ljava/util/List;)V

    .line 181
    invoke-direct {p0}, Lo/QQ;->j()V

    .line 182
    invoke-direct {p0}, Lo/QQ;->g()V

    .line 183
    invoke-direct {p0}, Lo/QQ;->b()V

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "offlineData"

    const-string v2, "onOfflinePlayableListUpdated %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iput-object p1, p0, Lo/QQ;->i:Ljava/util/Map;

    .line 168
    invoke-direct {p0}, Lo/QQ;->i()Z

    move-result p1

    iput-boolean p1, p0, Lo/QQ;->g:Z

    .line 169
    invoke-direct {p0}, Lo/QQ;->b()V

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
