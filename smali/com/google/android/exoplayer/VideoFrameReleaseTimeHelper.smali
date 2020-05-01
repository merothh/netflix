.class public final Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private final useDefaultDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J

.field private final vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    return-void
.end method

.method private constructor <init>(FZ)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iput-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->getDefaultDisplayRefreshRate(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 10

    sub-long v0, p0, p2

    div-long/2addr v0, p4

    mul-long/2addr v0, p4

    add-long/2addr v0, p2

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    sub-long v2, v0, p4

    :goto_0
    sub-long v4, v0, p0

    sub-long v6, p0, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :goto_1
    return-wide v0

    :cond_0
    add-long v2, v0, p4

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private static getDefaultDisplayRefreshRate(Landroid/content/Context;)F
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x3e8

    mul-long v4, p1, v0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, v4, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v6, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    move-wide v0, p3

    move-wide v2, v4

    :goto_0
    iget-boolean v6, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v6, :cond_1

    iput-wide v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    iput-wide v8, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->onSynced()V

    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    iget-object v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v2, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_6

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v0, v2

    iget-wide v6, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long/2addr v0, v6

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v6, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    :cond_5
    move-wide v0, p3

    move-wide v2, v4

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v2, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public disable()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    :cond_0
    return-void
.end method

.method protected onSynced()V
    .locals 0

    return-void
.end method
