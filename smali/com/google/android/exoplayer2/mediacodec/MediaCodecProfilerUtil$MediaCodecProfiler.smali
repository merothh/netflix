.class Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaCodecProfiler"
.end annotation


# instance fields
.field private lastInvoke:J

.field private lastLogNs:J

.field private final logIntervalNs:J

.field private maxTimeSpent:J

.field private minTimeSpent:J

.field private final name:Ljava/lang/String;

.field private numOfInvoke:I

.field protected totalMs:D


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastLogNs:J

    .line 20
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastInvoke:J

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->numOfInvoke:I

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->maxTimeSpent:J

    const-wide/32 v0, 0x7fffffff

    .line 23
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->minTimeSpent:J

    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->name:Ljava/lang/String;

    const-wide/32 v0, 0xf4240

    mul-long p2, p2, v0

    .line 27
    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->logIntervalNs:J

    return-void
.end method

.method private getLogString()Ljava/lang/String;
    .locals 6

    .line 46
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->numOfInvoke:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->minTimeSpent:J

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->maxTimeSpent:J

    long-to-float v2, v4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->totalMs:D

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->numOfInvoke:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "%s #%d  minmax [%f, %f] Average %f ms"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryLog(J)V
    .locals 5

    .line 50
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastLogNs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->logIntervalNs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 51
    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastLogNs:J

    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->getLogString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecProfiler"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastInvoke:J

    return-void
.end method

.method public end()V
    .locals 8

    .line 34
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastInvoke:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 36
    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->lastInvoke:J

    sub-long v2, v0, v2

    .line 37
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->minTimeSpent:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->minTimeSpent:J

    .line 38
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->maxTimeSpent:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->maxTimeSpent:J

    .line 39
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->totalMs:D

    long-to-double v2, v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->totalMs:D

    .line 40
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->numOfInvoke:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->numOfInvoke:I

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecProfilerUtil$MediaCodecProfiler;->tryLog(J)V

    :cond_0
    return-void
.end method
