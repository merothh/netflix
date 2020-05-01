.class public Lo/uj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uj$Activity;,
        Lo/uj$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final b:Landroid/os/Handler;

.field private final c:Lo/ua;

.field private final d:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final e:Lo/wc;

.field private final g:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private h:Landroid/os/Handler$Callback;

.field private final i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/uj$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ua;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/uj;->j:Ljava/util/Queue;

    .line 209
    new-instance v0, Lo/uj$5;

    invoke-direct {v0, p0}, Lo/uj$5;-><init>(Lo/uj;)V

    iput-object v0, p0, Lo/uj;->h:Landroid/os/Handler$Callback;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lo/ua;->e()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lo/uj;->h:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/uj;->b:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lo/uj;->c:Lo/ua;

    .line 50
    iput-object p3, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 p1, 0x2000

    .line 51
    invoke-interface {p2, p1}, Lo/vY;->e(I)Lo/wc;

    move-result-object p1

    iput-object p1, p0, Lo/uj;->e:Lo/wc;

    if-eqz p3, :cond_0

    .line 53
    new-instance p1, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v0, p0, Lo/uj;->e:Lo/wc;

    const/16 v1, -0x3e8

    invoke-direct {p1, v0, p3, v1}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    invoke-interface {p2, p1}, Lo/vY;->c(Lcom/google/android/exoplayer2/upstream/DataSource;)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lo/uj;->d:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lo/uj;->e:Lo/wc;

    invoke-interface {p2, p1}, Lo/vY;->c(Lcom/google/android/exoplayer2/upstream/DataSource;)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lo/uj;->d:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 59
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object p3, p0, Lo/uj;->c:Lo/ua;

    iget-object v0, p0, Lo/uj;->d:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 v1, 0x3

    invoke-direct {p1, p3, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V

    iput-object p1, p0, Lo/uj;->i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 61
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object p3, p0, Lo/uj;->c:Lo/ua;

    iget-object v0, p0, Lo/uj;->e:Lo/wc;

    .line 62
    invoke-interface {p2, v0}, Lo/vY;->c(Lcom/google/android/exoplayer2/upstream/DataSource;)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p2

    invoke-direct {p1, p3, p2, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V

    iput-object p1, p0, Lo/uj;->g:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)J
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 145
    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 146
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    if-eqz p2, :cond_0

    .line 148
    iget-object v7, v1, Lo/uj;->g:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lo/uj;->i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    :goto_0
    const-wide/16 v8, 0x0

    :goto_1
    if-nez p2, :cond_1

    .line 150
    iget-object v10, v1, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v10, :cond_1

    const/16 v11, -0x3e8

    .line 152
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    :cond_1
    const/4 v10, 0x0

    .line 155
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-nez v11, :cond_5

    .line 158
    invoke-interface {v7, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    :goto_2
    cmp-long v11, v8, v5

    if-eqz v11, :cond_4

    .line 160
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-nez v11, :cond_3

    .line 163
    array-length v11, v2

    int-to-long v11, v11

    sub-long v13, v5, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-interface {v7, v2, v10, v12}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v11
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 180
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v8

    :cond_2
    int-to-long v11, v11

    add-long/2addr v8, v11

    goto :goto_2

    .line 161
    :cond_3
    :try_start_1
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_4
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v8

    .line 156
    :cond_5
    :try_start_2
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11
    :try_end_2
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_3
    const-string v11, "nf_cache"

    const-string v12, "prefetch interrupted after reading %s bytes. rescheduling %d remaining"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 172
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x1

    sub-long v21, v5, v8

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v11, v12, v13}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    new-instance v10, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v15, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v11, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    add-long v19, v3, v8

    iget-object v12, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v14, v10

    move-object/from16 v16, v11

    move-wide/from16 v17, v19

    move-object/from16 v23, v12

    move/from16 v24, v0

    invoke-direct/range {v14 .. v24}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    move-object v0, v10

    goto :goto_1

    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 181
    throw v0
.end method

.method static synthetic a(Lo/uj;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/uj;->b()V

    return-void
.end method

.method private b()V
    .locals 12

    .line 98
    iget-object v0, p0, Lo/uj;->j:Ljava/util/Queue;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lo/uj;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uj$StateListAnimator;

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-boolean v0, v1, Lo/uj$StateListAnimator;->c:Z

    const/16 v2, -0x3e8

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 110
    :try_start_1
    iget-boolean v6, v1, Lo/uj$StateListAnimator;->a:Z

    if-nez v6, :cond_2

    .line 111
    iget-object v6, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-boolean v7, v1, Lo/uj$StateListAnimator;->c:Z

    invoke-direct {p0, v6, v7}, Lo/uj;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)J

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, v1, Lo/uj$StateListAnimator;->b:Lo/wU;

    invoke-direct {p0, v0, v6}, Lo/uj;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;)[B

    move-result-object v0

    .line 115
    :goto_0
    iget-object v6, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    if-eqz v6, :cond_3

    .line 116
    iget-object v6, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    invoke-interface {v6, v0}, Lo/uj$Activity;->e(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "nf_cache"

    const-string v6, "prefetching content -> %s cache: %s (%s KB) finished"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 118
    iget-object v8, p0, Lo/uj;->c:Lo/ua;

    invoke-virtual {v8}, Lo/ua;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v8, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    aput-object v8, v7, v5

    iget-object v8, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0, v6, v7}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-boolean v0, v1, Lo/uj$StateListAnimator;->c:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_7

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v6, "nf_cache"

    const-string v7, "cache file removed while caching content %s: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 132
    iget-object v8, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v8, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    aput-object v8, v3, v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v6, v7, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    iget-object v0, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    invoke-interface {v0}, Lo/uj$Activity;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :cond_4
    iget-boolean v0, v1, Lo/uj$StateListAnimator;->c:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_7

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v6, "nf_cache"

    const-string v7, "encountered interruption caching content %s: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    iget-object v8, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v8, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    aput-object v8, v3, v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v6, v7, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    iget-object v0, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    invoke-interface {v0}, Lo/uj$Activity;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :cond_5
    iget-boolean v0, v1, Lo/uj$StateListAnimator;->c:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_7

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v3, "nf_cache"

    const-string v6, "encountered exception caching content %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 120
    iget-object v7, v1, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-static {v3, v0, v6, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    iget-object v0, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, v1, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    invoke-interface {v0}, Lo/uj$Activity;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :cond_6
    iget-boolean v0, v1, Lo/uj$StateListAnimator;->c:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_7

    .line 138
    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_7
    return-void

    .line 137
    :goto_2
    iget-boolean v1, v1, Lo/uj$StateListAnimator;->c:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lo/uj;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_8

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 140
    :cond_8
    throw v0

    :catchall_1
    move-exception v1

    .line 100
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;)[B
    .locals 6

    const-string v0, "encountered error when closing cache data source during prefetch"

    const-string v1, "nf_cache"

    .line 186
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    long-to-int v3, v2

    new-array v2, v3, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 188
    :try_start_0
    iget-object v5, p0, Lo/uj;->e:Lo/wc;

    invoke-interface {v5, p2}, Lo/wc;->d(Lo/wU;)V

    .line 189
    iget-object p2, p0, Lo/uj;->i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    const/4 p1, 0x0

    .line 192
    :cond_0
    iget-object p2, p0, Lo/uj;->i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    array-length v5, v2

    sub-int/2addr v5, p1

    invoke-virtual {p2, v2, p1, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result p2

    add-int/2addr p1, p2

    if-lez p2, :cond_1

    .line 194
    array-length p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, p2, :cond_0

    .line 197
    :cond_1
    iget-object p1, p0, Lo/uj;->e:Lo/wc;

    invoke-interface {p1, v3}, Lo/wc;->d(Lo/wU;)V

    .line 199
    :try_start_1
    iget-object p1, p0, Lo/uj;->i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-array p2, v4, [Ljava/lang/Object;

    .line 204
    invoke-static {v1, p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-object v2

    :catchall_0
    move-exception p1

    .line 197
    iget-object p2, p0, Lo/uj;->e:Lo/wc;

    invoke-interface {p2, v3}, Lo/wc;->d(Lo/wU;)V

    .line 199
    :try_start_2
    iget-object p2, p0, Lo/uj;->i:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    :goto_2
    new-array v2, v4, [Ljava/lang/Object;

    .line 204
    invoke-static {v1, p2, v0, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    :goto_3
    throw p1
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;Lo/uj$Activity;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lo/wU;",
            "Lo/uj$Activity<",
            "[B>;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/uj;->j:Ljava/util/Queue;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lo/uj;->j:Ljava/util/Queue;

    new-instance v8, Lo/uj$StateListAnimator;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lo/uj$StateListAnimator;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;ZZLo/uj$Activity;)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p1, p0, Lo/uj;->b:Landroid/os/Handler;

    const/16 p2, 0x1000

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/DataSpec;ZLo/uj$Activity;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Z",
            "Lo/uj$Activity<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lo/uj;->j:Ljava/util/Queue;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lo/uj;->j:Ljava/util/Queue;

    new-instance v8, Lo/uj$StateListAnimator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lo/uj$StateListAnimator;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;ZZLo/uj$Activity;)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lo/uj;->b:Landroid/os/Handler;

    const/16 p2, 0x1000

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
