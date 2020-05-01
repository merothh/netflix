.class Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAcquireTimeMs:J

.field private mHeldTimeMs:J

.field private mIsHeld:Z

.field private mIsReferenceCounted:Z

.field private mLastReleasedMs:J

.field private mReferences:I

.field private mTimeoutTimeMs:J

.field public final tag:Ljava/lang/String;

.field public final wakeLockReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private applyFinalize()Z
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mIsHeld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->wakeLockReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The wakelock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was garbage collected before being released."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeLockMetricsCollector"

    invoke-static {v1, v0}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->releaseAtTime(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyTimeouts()Z
    .locals 5

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 103
    iget-wide v2, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mTimeoutTimeMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 104
    invoke-direct {p0, v2, v3}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->releaseAtTime(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private releaseAtTime(J)Z
    .locals 7

    .line 78
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mIsHeld:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mIsReferenceCounted:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mReferences:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mReferences:I

    if-eqz v0, :cond_1

    return v1

    .line 87
    :cond_1
    iput-wide p1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mLastReleasedMs:J

    .line 88
    iget-wide v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mHeldTimeMs:J

    iget-wide v5, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mAcquireTimeMs:J

    sub-long/2addr p1, v5

    add-long/2addr v3, p1

    iput-wide v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mHeldTimeMs:J

    const-wide p1, 0x7fffffffffffffffL

    .line 89
    iput-wide p1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mTimeoutTimeMs:J

    .line 90
    iput-boolean v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mIsHeld:Z

    return v2
.end method


# virtual methods
.method public applyAutomaticReleases()Z
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->applyTimeouts()Z

    move-result v0

    .line 97
    invoke-direct {p0}, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->applyFinalize()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getHeldTimeMs()J
    .locals 6

    .line 122
    iget-wide v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mHeldTimeMs:J

    iget-boolean v2, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mIsHeld:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mAcquireTimeMs:J

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastReleaseTimeMs()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mLastReleasedMs:J

    return-wide v0
.end method

.method public isHeld()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockDetails;->mIsHeld:Z

    return v0
.end method
