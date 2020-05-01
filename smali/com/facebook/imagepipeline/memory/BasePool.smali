.class public abstract Lcom/facebook/imagepipeline/memory/BasePool;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DefaultSplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;,
        Lcom/facebook/imagepipeline/memory/BasePool$SizeTooLargeException;,
        Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;,
        Lcom/facebook/imagepipeline/memory/BasePool$InvalidValueException;,
        Lcom/facebook/imagepipeline/memory/BasePool$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/DefaultSplitAssetLoader<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final c:Lo/Face;

.field final d:Lo/RuntimePermissionPresenter;

.field final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/SizeAreaComparator<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

.field private h:Z

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final j:Lo/HighSpeedVideoConfiguration;


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    .line 166
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RuntimePermissionPresenter;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->d:Lo/RuntimePermissionPresenter;

    .line 167
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Face;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    .line 168
    invoke-static {p3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/HighSpeedVideoConfiguration;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    .line 171
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    .line 172
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-boolean p1, p1, Lo/Face;->h:Z

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->g()V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(Landroid/util/SparseIntArray;)V

    .line 178
    :goto_0
    invoke-static {}, Lo/VerifierInfo;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/util/Set;

    .line 180
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    .line 181
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    return-void
.end method

.method private c(Landroid/util/SparseIntArray;)V
    .locals 8

    .line 509
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 510
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 511
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 512
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 513
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    new-instance v5, Lo/SizeAreaComparator;

    .line 516
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result v6

    iget-object v7, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-boolean v7, v7, Lo/Face;->h:Z

    invoke-direct {v5, v6, v3, v0, v7}, Lo/SizeAreaComparator;-><init>(IIIZ)V

    .line 513
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized e(Landroid/util/SparseIntArray;)V
    .locals 10

    monitor-enter p0

    .line 461
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 467
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-object v0, v0, Lo/Face;->d:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 469
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 470
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 471
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 472
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 473
    iget-object v6, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    new-instance v7, Lo/SizeAreaComparator;

    .line 476
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-boolean v9, v9, Lo/Face;->h:Z

    invoke-direct {v7, v8, v4, v5, v9}, Lo/SizeAreaComparator;-><init>(IIIZ)V

    .line 473
    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->h:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 483
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g(I)Lo/SizeAreaComparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/SizeAreaComparator<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SizeAreaComparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-object v0, v0, Lo/Face;->d:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->c(Landroid/util/SparseIntArray;)V

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->h:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidAccessToGuardedField"
        }
    .end annotation

    const/4 v0, 0x2

    .line 766
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    .line 772
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    .line 773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "Used = (%d, %d); Free = (%d, %d)"

    .line 767
    invoke-static/range {v1 .. v6}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SizeAreaComparator<",
            "TV;>;>;"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 525
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SizeAreaComparator;

    .line 526
    iget v4, v3, Lo/SizeAreaComparator;->a:I

    .line 527
    iget v5, v3, Lo/SizeAreaComparator;->d:I

    .line 528
    invoke-virtual {v3}, Lo/SizeAreaComparator;->j()I

    move-result v6

    .line 529
    invoke-virtual {v3}, Lo/SizeAreaComparator;->c()I

    move-result v7

    if-lez v7, :cond_0

    .line 530
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    new-instance v7, Lo/SizeAreaComparator;

    .line 535
    invoke-virtual {p0, v4}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result v4

    iget-object v8, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-boolean v8, v8, Lo/Face;->h:Z

    invoke-direct {v7, v4, v5, v6, v8}, Lo/SizeAreaComparator;-><init>(IIIZ)V

    .line 532
    invoke-virtual {v3, v2, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->i()V

    .line 213
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(I)I

    move-result p1

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->f(I)Lo/SizeAreaComparator;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->d(Lo/SizeAreaComparator;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lo/StringParceledListSlice;->c(Z)V

    .line 227
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->d(Ljava/lang/Object;)I

    move-result p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result v0

    .line 229
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d(I)V

    .line 230
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a(I)V

    .line 231
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v3, v0}, Lo/HighSpeedVideoConfiguration;->d(I)V

    .line 232
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->h()V

    .line 233
    invoke-static {v1}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v1, "get (reuse) (object, size) = (%x, %s)"

    .line 237
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 234
    invoke-static {v0, v1, v3, p1}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    :cond_0
    monitor-exit p0

    return-object v2

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result v2

    .line 246
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->h(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d(I)V

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Lo/SizeAreaComparator;->b()V

    .line 259
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 266
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->b(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 270
    monitor-enter p0

    .line 271
    :try_start_2
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v4, v2}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a(I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->f(I)Lo/SizeAreaComparator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 274
    invoke-virtual {v4}, Lo/SizeAreaComparator;->f()V

    .line 276
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    invoke-static {v3}, Lo/VerificationParams;->c(Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    monitor-enter p0

    .line 286
    :try_start_3
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lo/StringParceledListSlice;->c(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->c()V

    .line 289
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v3, v2}, Lo/HighSpeedVideoConfiguration;->c(I)V

    .line 290
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->h()V

    .line 291
    invoke-static {v1}, Lo/DexMetadataHelper;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v2, "get (alloc) (object, size) = (%x, %s)"

    .line 295
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 292
    invoke-static {v1, v2, v3, p1}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 276
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 247
    :cond_5
    :try_start_5
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget v0, v0, Lo/Face;->a:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;-><init>(IIII)V

    throw p1

    :catchall_3
    move-exception p1

    .line 259
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method protected a()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->d:Lo/RuntimePermissionPresenter;

    invoke-interface {v0, p0}, Lo/RuntimePermissionPresenter;->d(Lo/SplitAssetDependencyLoader;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v0, p0}, Lo/HighSpeedVideoConfiguration;->a(Lcom/facebook/imagepipeline/memory/BasePool;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 442
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public b(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 0

    .line 385
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->d()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 315
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(Ljava/lang/Object;)I

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result v1

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->g(I)Lo/SizeAreaComparator;

    move-result-object v2

    .line 321
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    .line 324
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v3, "release (free, value unrecognized) (object, size) = (%x, %s)"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 327
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 324
    invoke-static {v2, v3, v4}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {p1, v1}, Lo/HighSpeedVideoConfiguration;->b(I)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    .line 342
    invoke-virtual {v2}, Lo/SizeAreaComparator;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->b()Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v2, p1}, Lo/SizeAreaComparator;->c(Ljava/lang/Object;)V

    .line 361
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d(I)V

    .line 362
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a(I)V

    .line 363
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v2, v1}, Lo/HighSpeedVideoConfiguration;->a(I)V

    .line 364
    invoke-static {v4}, Lo/DexMetadataHelper;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v2, "release (reuse) (object, size) = (%x, %s)"

    .line 368
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 365
    invoke-static {v1, v2, p1, v0}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 346
    invoke-virtual {v2}, Lo/SizeAreaComparator;->f()V

    .line 349
    :cond_3
    invoke-static {v4}, Lo/DexMetadataHelper;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v3, "release (free) (object, size) = (%x, %s)"

    .line 353
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 350
    invoke-static {v2, v3, v4, v0}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    :cond_4
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(Ljava/lang/Object;)V

    .line 357
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a(I)V

    .line 358
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {p1, v1}, Lo/HighSpeedVideoConfiguration;->b(I)V

    .line 373
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->h()V

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget v1, v1, Lo/Face;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 720
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v1}, Lo/HighSpeedVideoConfiguration;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 607
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget v0, v0, Lo/Face;->c:I

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(I)V
    .locals 7

    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 630
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 632
    :try_start_1
    invoke-static {v1}, Lo/DexMetadataHelper;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v3, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d"

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v5, v5, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v6, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v6, v6, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v5, v6

    .line 637
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 638
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 633
    invoke-static {v2, v3, v4, v5, v6}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 640
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->h()V

    const/4 v2, 0x0

    .line 644
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    if-gtz v0, :cond_2

    goto :goto_3

    .line 648
    :cond_2
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SizeAreaComparator;

    :goto_1
    if-lez v0, :cond_4

    .line 650
    invoke-virtual {v3}, Lo/SizeAreaComparator;->d()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 654
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/imagepipeline/memory/BasePool;->e(Ljava/lang/Object;)V

    .line 655
    iget v4, v3, Lo/SizeAreaComparator;->a:I

    sub-int/2addr v0, v4

    .line 656
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v5, v3, Lo/SizeAreaComparator;->a:I

    invoke-virtual {v4, v5}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a(I)V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->h()V

    .line 662
    invoke-static {v1}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 663
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v1, "trimToSize: TargetSize = %d; Final Size = %d"

    .line 666
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v2, v3

    .line 667
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 663
    invoke-static {v0, v1, p1, v2}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract d(I)I
.end method

.method protected abstract d(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public declared-synchronized d(Lo/SizeAreaComparator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SizeAreaComparator<",
            "TV;>;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lo/SizeAreaComparator;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()V
    .locals 6

    .line 554
    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-boolean v0, v0, Lo/Face;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->j()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 558
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x0

    .line 561
    :goto_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 562
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/SizeAreaComparator;

    .line 563
    invoke-virtual {v4}, Lo/SizeAreaComparator;->c()I

    move-result v5

    if-lez v5, :cond_1

    .line 564
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_1
    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4}, Lo/SizeAreaComparator;->j()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->e(Landroid/util/SparseIntArray;)V

    .line 573
    :goto_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->b()V

    .line 574
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->h()V

    .line 575
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->e()V

    .line 583
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 584
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SizeAreaComparator;

    .line 589
    :goto_3
    invoke-virtual {v2}, Lo/SizeAreaComparator;->d()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 593
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->e(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 575
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract e(I)I
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected abstract e(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method declared-synchronized f(I)Lo/SizeAreaComparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/SizeAreaComparator<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SizeAreaComparator;

    if-nez v0, :cond_2

    .line 690
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->h:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 695
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->i:Ljava/lang/Class;

    const-string v1, "creating new bucket %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->j(I)Lo/SizeAreaComparator;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-object v0

    .line 691
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized h(I)Z
    .locals 5

    monitor-enter p0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget v0, v0, Lo/Face;->a:I

    .line 740
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    .line 741
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {p1}, Lo/HighSpeedVideoConfiguration;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return v2

    .line 746
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget v1, v1, Lo/Face;->c:I

    .line 747
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v4, v4, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    if-le p1, v3, :cond_1

    sub-int/2addr v1, p1

    .line 748
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->c(I)V

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Lcom/facebook/imagepipeline/memory/BasePool$Activity;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    .line 753
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->j:Lo/HighSpeedVideoConfiguration;

    invoke-interface {p1}, Lo/HighSpeedVideoConfiguration;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    monitor-exit p0

    return v2

    :cond_2
    const/4 p1, 0x1

    .line 757
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected j(I)Lo/SizeAreaComparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/SizeAreaComparator<",
            "TV;>;"
        }
    .end annotation

    .line 704
    new-instance v0, Lo/SizeAreaComparator;

    .line 705
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lo/Face;

    iget-boolean v1, v1, Lo/Face;->h:Z

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lo/SizeAreaComparator;-><init>(IIIZ)V

    return-object v0
.end method
