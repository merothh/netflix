.class public Lo/PackageManagerInternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageStats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PackageManagerInternal$ActionBar;,
        Lo/PackageManagerInternal$StateListAnimator;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final d:J

.field private static final e:J


# instance fields
.field private final a:J

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private final g:Ljava/util/concurrent/CountDownLatch;

.field private h:J

.field private final i:J

.field private final j:Lcom/facebook/cache/common/CacheEventListener;

.field private final k:J

.field private final l:Lo/PackageInstaller;

.field private final m:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final n:Lcom/facebook/common/statfs/StatFsHelper;

.field private final o:Lo/PackageParser;

.field private final p:Lo/GradientColor;

.field private final q:Ljava/lang/Object;

.field private r:Z

.field private final s:Z

.field private final t:Lo/PackageManagerInternal$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-class v0, Lo/PackageManagerInternal;

    sput-object v0, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/PackageManagerInternal;->e:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/PackageManagerInternal;->d:J

    return-void
.end method

.method public constructor <init>(Lo/PackageInstaller;Lo/PackageParser;Lo/PackageManagerInternal$ActionBar;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lo/PackageSharedLibraryUpdater;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance p7, Ljava/lang/Object;

    invoke-direct {p7}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    .line 157
    iget-wide v0, p3, Lo/PackageManagerInternal$ActionBar;->c:J

    iput-wide v0, p0, Lo/PackageManagerInternal;->a:J

    .line 158
    iget-wide v0, p3, Lo/PackageManagerInternal$ActionBar;->e:J

    iput-wide v0, p0, Lo/PackageManagerInternal;->i:J

    .line 159
    iget-wide v0, p3, Lo/PackageManagerInternal$ActionBar;->e:J

    iput-wide v0, p0, Lo/PackageManagerInternal;->f:J

    .line 160
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->e()Lcom/facebook/common/statfs/StatFsHelper;

    move-result-object p7

    iput-object p7, p0, Lo/PackageManagerInternal;->n:Lcom/facebook/common/statfs/StatFsHelper;

    .line 162
    iput-object p1, p0, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    .line 164
    iput-object p2, p0, Lo/PackageManagerInternal;->o:Lo/PackageParser;

    const-wide/16 p1, -0x1

    .line 166
    iput-wide p1, p0, Lo/PackageManagerInternal;->h:J

    .line 168
    iput-object p4, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    .line 170
    iget-wide p1, p3, Lo/PackageManagerInternal$ActionBar;->b:J

    iput-wide p1, p0, Lo/PackageManagerInternal;->k:J

    .line 172
    iput-object p5, p0, Lo/PackageManagerInternal;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 174
    new-instance p1, Lo/PackageManagerInternal$StateListAnimator;

    invoke-direct {p1}, Lo/PackageManagerInternal$StateListAnimator;-><init>()V

    iput-object p1, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    .line 176
    invoke-static {}, Lo/FontResourcesParser;->d()Lo/FontResourcesParser;

    move-result-object p1

    iput-object p1, p0, Lo/PackageManagerInternal;->p:Lo/GradientColor;

    .line 178
    iput-boolean p9, p0, Lo/PackageManagerInternal;->s:Z

    .line 180
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    if-eqz p6, :cond_0

    .line 183
    invoke-interface {p6, p0}, Lo/PackageSharedLibraryUpdater;->c(Lo/PathPermission;)V

    .line 186
    :cond_0
    iget-boolean p1, p0, Lo/PackageManagerInternal;->s:Z

    if-eqz p1, :cond_1

    .line 187
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo/PackageManagerInternal;->g:Ljava/util/concurrent/CountDownLatch;

    .line 189
    new-instance p1, Lo/PackageManagerInternal$3;

    invoke-direct {p1, p0}, Lo/PackageManagerInternal$3;-><init>(Lo/PackageManagerInternal;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo/PackageManagerInternal;->g:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    return-void
.end method

.method private a()V
    .locals 7

    .line 467
    iget-object v0, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    invoke-direct {p0}, Lo/PackageManagerInternal;->d()Z

    move-result v1

    .line 471
    invoke-direct {p0}, Lo/PackageManagerInternal;->b()V

    .line 473
    iget-object v2, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v2}, Lo/PackageManagerInternal$StateListAnimator;->d()J

    move-result-wide v2

    .line 476
    iget-wide v4, p0, Lo/PackageManagerInternal;->f:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v1}, Lo/PackageManagerInternal$StateListAnimator;->b()V

    .line 478
    invoke-direct {p0}, Lo/PackageManagerInternal;->d()Z

    .line 482
    :cond_0
    iget-wide v4, p0, Lo/PackageManagerInternal;->f:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 483
    iget-wide v1, p0, Lo/PackageManagerInternal;->f:J

    const-wide/16 v3, 0x9

    mul-long v1, v1, v3

    const-wide/16 v3, 0xa

    div-long/2addr v1, v3

    sget-object v3, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->d:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v1, v2, v3}, Lo/PackageManagerInternal;->c(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V

    .line 487
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lo/PackageManagerInternal;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/PackageManagerInternal;->d()Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 6

    .line 565
    iget-object v0, p0, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    .line 566
    invoke-interface {v0}, Lo/PackageInstaller;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->a:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->c:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 569
    :goto_0
    iget-object v1, p0, Lo/PackageManagerInternal;->n:Lcom/facebook/common/statfs/StatFsHelper;

    iget-wide v2, p0, Lo/PackageManagerInternal;->i:J

    iget-object v4, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    .line 572
    invoke-virtual {v4}, Lo/PackageManagerInternal$StateListAnimator;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 570
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/common/statfs/StatFsHelper;->e(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-wide v0, p0, Lo/PackageManagerInternal;->a:J

    iput-wide v0, p0, Lo/PackageManagerInternal;->f:J

    goto :goto_1

    .line 576
    :cond_1
    iget-wide v0, p0, Lo/PackageManagerInternal;->i:J

    iput-wide v0, p0, Lo/PackageManagerInternal;->f:J

    :goto_1
    return-void
.end method

.method private c(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo/PackageInstaller$Activity;",
            ">;)",
            "Ljava/util/Collection<",
            "Lo/PackageInstaller$Activity;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lo/PackageManagerInternal;->p:Lo/GradientColor;

    invoke-interface {v0}, Lo/GradientColor;->e()J

    move-result-wide v0

    sget-wide v2, Lo/PackageManagerInternal;->e:J

    add-long/2addr v0, v2

    .line 543
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/PackageInstaller$Activity;

    .line 546
    invoke-interface {v4}, Lo/PackageInstaller$Activity;->a()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 547
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_1
    iget-object p1, p0, Lo/PackageManagerInternal;->o:Lo/PackageParser;

    invoke-interface {p1}, Lo/PackageParser;->c()Lo/PackageParserCacheHelper;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 553
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method static synthetic c(Lo/PackageManagerInternal;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/PackageManagerInternal;->g:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private c(Ljava/lang/String;Lo/MacAuthenticatedInputStream;)Lo/PackageInstaller$TaskDescription;
    .locals 1

    .line 328
    invoke-direct {p0}, Lo/PackageManagerInternal;->a()V

    .line 329
    iget-object v0, p0, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v0, p1, p2}, Lo/PackageInstaller;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/PackageInstaller$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method private c(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 496
    :try_start_0
    iget-object v0, v1, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v0}, Lo/PackageInstaller;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/PackageManagerInternal;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    iget-object v4, v1, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v4}, Lo/PackageManagerInternal$StateListAnimator;->d()J

    move-result-wide v4

    sub-long v6, v4, v2

    const/4 v8, 0x0

    .line 510
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/PackageInstaller$Activity;

    cmp-long v14, v11, v6

    if-lez v14, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    iget-object v14, v1, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v14, v13}, Lo/PackageInstaller;->b(Lo/PackageInstaller$Activity;)J

    move-result-wide v14

    .line 515
    iget-object v9, v1, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {v13}, Lo/PackageInstaller$Activity;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    cmp-long v16, v14, v9

    if-lez v16, :cond_1

    add-int/lit8 v8, v8, 0x1

    add-long/2addr v11, v14

    .line 519
    invoke-static {}, Lo/ParceledListSlice;->a()Lo/ParceledListSlice;

    move-result-object v9

    .line 520
    invoke-interface {v13}, Lo/PackageInstaller$Activity;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lo/ParceledListSlice;->b(Ljava/lang/String;)Lo/ParceledListSlice;

    move-result-object v9

    move-object/from16 v10, p3

    .line 521
    invoke-virtual {v9, v10}, Lo/ParceledListSlice;->b(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lo/ParceledListSlice;

    move-result-object v9

    .line 522
    invoke-virtual {v9, v14, v15}, Lo/ParceledListSlice;->a(J)Lo/ParceledListSlice;

    move-result-object v9

    sub-long v13, v4, v11

    .line 523
    invoke-virtual {v9, v13, v14}, Lo/ParceledListSlice;->b(J)Lo/ParceledListSlice;

    move-result-object v9

    .line 524
    invoke-virtual {v9, v2, v3}, Lo/ParceledListSlice;->c(J)Lo/ParceledListSlice;

    move-result-object v9

    .line 525
    iget-object v13, v1, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v13, v9}, Lcom/facebook/cache/common/CacheEventListener;->f(Lo/LimitedLengthInputStream;)V

    .line 526
    invoke-virtual {v9}, Lo/ParceledListSlice;->c()V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p3

    goto :goto_0

    .line 529
    :cond_2
    :goto_1
    iget-object v0, v1, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    neg-long v2, v11

    neg-int v4, v8

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lo/PackageManagerInternal$StateListAnimator;->b(JJ)V

    .line 530
    iget-object v0, v1, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v0}, Lo/PackageInstaller;->a()V

    return-void

    :catch_0
    move-exception v0

    .line 498
    iget-object v2, v1, Lo/PackageManagerInternal;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->k:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evictAboveSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    throw v0
.end method

.method static synthetic d(Lo/PackageManagerInternal;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    return-object p0
.end method

.method private d()Z
    .locals 7

    .line 688
    iget-object v0, p0, Lo/PackageManagerInternal;->p:Lo/GradientColor;

    invoke-interface {v0}, Lo/GradientColor;->e()J

    move-result-wide v0

    .line 689
    iget-object v2, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v2}, Lo/PackageManagerInternal$StateListAnimator;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lo/PackageManagerInternal;->h:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    sget-wide v2, Lo/PackageManagerInternal;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 692
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/PackageManagerInternal;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lo/PackageManagerInternal;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lo/PackageManagerInternal;->r:Z

    return p1
.end method

.method private e(Lo/PackageInstaller$TaskDescription;Lo/MacAuthenticatedInputStream;Ljava/lang/String;)Lo/InstantAppResolveInfo;
    .locals 5

    .line 340
    iget-object v0, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    invoke-interface {p1, p2}, Lo/PackageInstaller$TaskDescription;->d(Ljava/lang/Object;)Lo/InstantAppResolveInfo;

    move-result-object p1

    .line 342
    iget-object p2, p0, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p2, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-interface {p1}, Lo/InstantAppResolveInfo;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lo/PackageManagerInternal$StateListAnimator;->b(JJ)V

    .line 344
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e()Z
    .locals 22

    move-object/from16 v1, p0

    .line 705
    iget-object v0, v1, Lo/PackageManagerInternal;->p:Lo/GradientColor;

    invoke-interface {v0}, Lo/GradientColor;->e()J

    move-result-wide v2

    .line 706
    sget-wide v4, Lo/PackageManagerInternal;->e:J

    add-long/2addr v4, v2

    .line 708
    iget-boolean v0, v1, Lo/PackageManagerInternal;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, v1, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    goto :goto_0

    .line 710
    :cond_0
    iget-boolean v0, v1, Lo/PackageManagerInternal;->s:Z

    if-eqz v0, :cond_1

    .line 711
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 716
    :goto_0
    :try_start_0
    iget-object v8, v1, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v8}, Lo/PackageInstaller;->d()Ljava/util/Collection;

    move-result-object v8

    .line 717
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-wide v6, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lo/PackageInstaller$Activity;

    add-int/lit8 v10, v10, 0x1

    .line 719
    invoke-interface/range {v16 .. v16}, Lo/PackageInstaller$Activity;->b()J

    move-result-wide v18

    add-long v11, v11, v18

    .line 722
    invoke-interface/range {v16 .. v16}, Lo/PackageInstaller$Activity;->a()J

    move-result-wide v18

    cmp-long v20, v18, v4

    if-lez v20, :cond_2

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v18, v4

    int-to-long v4, v14

    .line 725
    invoke-interface/range {v16 .. v16}, Lo/PackageInstaller$Activity;->b()J

    move-result-wide v20

    add-long v4, v4, v20

    long-to-int v5, v4

    .line 726
    invoke-interface/range {v16 .. v16}, Lo/PackageInstaller$Activity;->a()J

    move-result-wide v20

    move v9, v5

    sub-long v4, v20, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v6, v4

    move v14, v9

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v4

    .line 727
    iget-boolean v4, v1, Lo/PackageManagerInternal;->s:Z

    if-eqz v4, :cond_3

    .line 728
    invoke-interface/range {v16 .. v16}, Lo/PackageInstaller$Activity;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move-wide/from16 v4, v18

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    .line 732
    iget-object v4, v1, Lo/PackageManagerInternal;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v5, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->c:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v8, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Future timestamp found in "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " files , with a total size of "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " bytes, and a maximum time delta of "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v8, v6, v7}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 740
    :cond_5
    iget-object v4, v1, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v4}, Lo/PackageManagerInternal$StateListAnimator;->c()J

    move-result-wide v4

    int-to-long v6, v10

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    iget-object v4, v1, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v4}, Lo/PackageManagerInternal$StateListAnimator;->d()J

    move-result-wide v4

    cmp-long v8, v4, v11

    if-eqz v8, :cond_8

    .line 741
    :cond_6
    iget-boolean v4, v1, Lo/PackageManagerInternal;->s:Z

    if-eqz v4, :cond_7

    iget-object v4, v1, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    if-eq v4, v0, :cond_7

    .line 742
    iget-object v4, v1, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 743
    iget-object v4, v1, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 745
    :cond_7
    iget-object v0, v1, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    invoke-virtual {v0, v11, v12, v6, v7}, Lo/PackageManagerInternal$StateListAnimator;->a(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_8
    iput-wide v2, v1, Lo/PackageManagerInternal;->h:J

    return v17

    :catch_0
    move-exception v0

    .line 748
    iget-object v2, v1, Lo/PackageManagerInternal;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->p:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcFileCacheSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 748
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public a(Lo/MacAuthenticatedInputStream;)Lo/InstantAppResolveInfo;
    .locals 8

    .line 248
    invoke-static {}, Lo/ParceledListSlice;->a()Lo/ParceledListSlice;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1}, Lo/ParceledListSlice;->d(Lo/MacAuthenticatedInputStream;)Lo/ParceledListSlice;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    :try_start_0
    iget-object v2, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    invoke-static {p1}, Lo/LauncherActivityInfo;->d(Lo/MacAuthenticatedInputStream;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 254
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 255
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v5}, Lo/ParceledListSlice;->b(Ljava/lang/String;)Lo/ParceledListSlice;

    .line 257
    iget-object v6, p0, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v6, v5, p1}, Lo/PackageInstaller;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/InstantAppResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 263
    iget-object p1, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->d(Lo/LimitedLengthInputStream;)V

    .line 264
    iget-object p1, p0, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_2
    iget-object p1, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->c(Lo/LimitedLengthInputStream;)V

    .line 267
    iget-object p1, p0, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    invoke-virtual {v0}, Lo/ParceledListSlice;->c()V

    return-object v6

    :catchall_0
    move-exception p1

    .line 270
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 272
    :try_start_4
    iget-object v2, p0, Lo/PackageManagerInternal;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->p:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    const-string v5, "getResource"

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-virtual {v0, p1}, Lo/ParceledListSlice;->b(Ljava/io/IOException;)Lo/ParceledListSlice;

    .line 278
    iget-object p1, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->e(Lo/LimitedLengthInputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 281
    invoke-virtual {v0}, Lo/ParceledListSlice;->c()V

    return-object v1

    :goto_3
    invoke-virtual {v0}, Lo/ParceledListSlice;->c()V

    throw p1
.end method

.method public c(Lo/MacAuthenticatedInputStream;)V
    .locals 6

    .line 389
    iget-object v0, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    invoke-static {p1}, Lo/LauncherActivityInfo;->d(Lo/MacAuthenticatedInputStream;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 393
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 394
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 395
    iget-object v3, p0, Lo/PackageManagerInternal;->l:Lo/PackageInstaller;

    invoke-interface {v3, v2}, Lo/PackageInstaller;->c(Ljava/lang/String;)J

    .line 396
    iget-object v3, p0, Lo/PackageManagerInternal;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 399
    :try_start_1
    iget-object v1, p0, Lo/PackageManagerInternal;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->n:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-interface {v1, v2, v3, v4, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Lo/MacAuthenticatedInputStream;Lo/PackageCleanItem;)Lo/InstantAppResolveInfo;
    .locals 4

    .line 352
    invoke-static {}, Lo/ParceledListSlice;->a()Lo/ParceledListSlice;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Lo/ParceledListSlice;->d(Lo/MacAuthenticatedInputStream;)Lo/ParceledListSlice;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v1, v0}, Lcom/facebook/cache/common/CacheEventListener;->b(Lo/LimitedLengthInputStream;)V

    .line 356
    iget-object v1, p0, Lo/PackageManagerInternal;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    invoke-static {p1}, Lo/LauncherActivityInfo;->e(Lo/MacAuthenticatedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 359
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 360
    invoke-virtual {v0, v2}, Lo/ParceledListSlice;->b(Ljava/lang/String;)Lo/ParceledListSlice;

    .line 363
    :try_start_1
    invoke-direct {p0, v2, p1}, Lo/PackageManagerInternal;->c(Ljava/lang/String;Lo/MacAuthenticatedInputStream;)Lo/PackageInstaller$TaskDescription;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    :try_start_2
    invoke-interface {v1, p2, p1}, Lo/PackageInstaller$TaskDescription;->d(Lo/PackageCleanItem;Ljava/lang/Object;)V

    .line 367
    invoke-direct {p0, v1, p1, v2}, Lo/PackageManagerInternal;->e(Lo/PackageInstaller$TaskDescription;Lo/MacAuthenticatedInputStream;Ljava/lang/String;)Lo/InstantAppResolveInfo;

    move-result-object p1

    .line 368
    invoke-interface {p1}, Lo/InstantAppResolveInfo;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/ParceledListSlice;->a(J)Lo/ParceledListSlice;

    move-result-object p2

    iget-object v2, p0, Lo/PackageManagerInternal;->t:Lo/PackageManagerInternal$StateListAnimator;

    .line 369
    invoke-virtual {v2}, Lo/PackageManagerInternal$StateListAnimator;->d()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lo/ParceledListSlice;->b(J)Lo/ParceledListSlice;

    .line 370
    iget-object p2, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p2, v0}, Lcom/facebook/cache/common/CacheEventListener;->a(Lo/LimitedLengthInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    :try_start_3
    invoke-interface {v1}, Lo/PackageInstaller$TaskDescription;->b()Z

    move-result p2

    if-nez p2, :cond_0

    .line 374
    sget-object p2, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p2, v1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 383
    :cond_0
    invoke-virtual {v0}, Lo/ParceledListSlice;->c()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 373
    :try_start_4
    invoke-interface {v1}, Lo/PackageInstaller$TaskDescription;->b()Z

    move-result p2

    if-nez p2, :cond_1

    .line 374
    sget-object p2, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p2, v1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    :try_start_5
    invoke-virtual {v0, p1}, Lo/ParceledListSlice;->b(Ljava/io/IOException;)Lo/ParceledListSlice;

    .line 379
    iget-object p2, p0, Lo/PackageManagerInternal;->j:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p2, v0}, Lcom/facebook/cache/common/CacheEventListener;->h(Lo/LimitedLengthInputStream;)V

    .line 380
    sget-object p2, Lo/PackageManagerInternal;->b:Ljava/lang/Class;

    const-string v1, "Failed inserting a file into the cache"

    invoke-static {p2, v1, p1}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 383
    :goto_0
    invoke-virtual {v0}, Lo/ParceledListSlice;->c()V

    throw p1

    :catchall_2
    move-exception p1

    .line 359
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method
