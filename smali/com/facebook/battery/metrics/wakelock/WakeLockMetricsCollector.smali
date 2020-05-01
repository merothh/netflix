.class public Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;
.super Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActiveWakeLockDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveWakeLocks:I

.field private mIsEnabled:Z

.field private final mPrevWakeLockMs:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalWakeLocksAcquired:J

.field private mWakeLockAcquireTimeMs:J

.field private final mWakeLocks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/PowerManager$WakeLock;",
            "Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLocksHeldTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mWakeLocks:Ljava/util/WeakHashMap;

    .line 46
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mPrevWakeLockMs:Lo/TextWatcher;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLockDetails:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mIsEnabled:Z

    return-void
.end method

.method private declared-synchronized updateWakeLockCounts()V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLockDetails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;

    .line 159
    invoke-virtual {v4}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->applyAutomaticReleases()Z

    move-result v5

    .line 160
    invoke-virtual {v4}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v4}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->getLastReleaseTimeMs()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_2

    .line 163
    invoke-virtual {v4}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->getLastReleaseTimeMs()J

    move-result-wide v1

    .line 168
    :cond_2
    :goto_1
    iget-object v5, v4, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->wakeLockReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mPrevWakeLockMs:Lo/TextWatcher;

    iget-object v6, v4, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 170
    iget-object v6, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mPrevWakeLockMs:Lo/TextWatcher;

    iget-object v7, v4, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->tag:Ljava/lang/String;

    if-nez v5, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 171
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_2
    invoke-virtual {v4}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->getHeldTimeMs()J

    move-result-wide v4

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 170
    invoke-virtual {v6, v7, v4}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 176
    :cond_4
    iget v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLocks:I

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 177
    iget-wide v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mWakeLocksHeldTimeMs:J

    iget-wide v5, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mWakeLockAcquireTimeMs:J

    sub-long/2addr v1, v5

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mWakeLocksHeldTimeMs:J

    .line 179
    :cond_5
    iput v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    move-result-object v0

    return-object v0
.end method

.method public createMetrics()Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;
    .locals 1

    .line 220
    new-instance v0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z
    .locals 0

    .line 37
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized getSnapshot(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v0, "Null value passed to getSnapshot!"

    .line 184
    invoke-static {p1, v0}, Lcom/facebook/battery/metrics/core/Utilities;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    monitor-exit p0

    return v1

    .line 189
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->updateWakeLockCounts()V

    .line 191
    iget-wide v2, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mTotalWakeLocksAcquired:J

    iput-wide v2, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    .line 192
    iget-wide v2, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mWakeLocksHeldTimeMs:J

    iget v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLocks:I

    const-wide/16 v4, 0x0

    if-lez v0, :cond_1

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mWakeLockAcquireTimeMs:J

    sub-long/2addr v6, v8

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    add-long/2addr v2, v6

    iput-wide v2, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    .line 196
    iget-boolean v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->clear()V

    .line 198
    iget-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLockDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 199
    iget-object v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mActiveWakeLockDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;

    .line 200
    invoke-virtual {v3}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->getHeldTimeMs()J

    move-result-wide v6

    .line 202
    iget-object v3, v3, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->tag:Ljava/lang/String;

    .line 203
    iget-object v8, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v8, v3}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 204
    iget-object v9, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    if-nez v8, :cond_2

    move-wide v10, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_2
    add-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v3, v6}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mPrevWakeLockMs:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_5

    .line 208
    iget-object v2, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mPrevWakeLockMs:Lo/TextWatcher;

    invoke-virtual {v2, v1}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    iget-object v3, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 210
    iget-object v6, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    if-nez v3, :cond_4

    move-wide v7, v4

    goto :goto_4

    .line 211
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_4
    iget-object v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;->mPrevWakeLockMs:Lo/TextWatcher;

    invoke-virtual {v3, v1}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 210
    invoke-virtual {v6, v2, v3}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    :cond_5
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
